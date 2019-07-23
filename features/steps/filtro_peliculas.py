from behave import *
from src.Pelicula import *
from src.Cine import *

# Condiciones antes de empezar cualquier STEP


def before_scenario(context, scenario):
    context = {}


# Obtener la lista de peliculas (datos de prueba)
@given("un conjunto de películas")
def step_impl(context):
    lista_peliculas = []
    for row in context.table:
        elenco = []
        idiomas = []

        for idioma in row['IDIOMAS'].split(','):
            idiomas.append(idioma.strip())

        for cast in row['ELENCO'].split(','):
            elenco.append(cast.strip())

        pelicula = Pelicula(row['TITULO'], row['DIRECTOR'], elenco,
                            row['GENERO'], idiomas, int(row['ESTRENO']),
                            row['RAITING'])
        lista_peliculas.append(pelicula)
    context.peliculas = lista_peliculas


@given("el usuario ingresa el título: '{titulo}'")
def step_impl(context, titulo):
    context.titulo = titulo


@given("el usuario ingresa el idioma: '{idioma}'")
def step_impl(context, idioma):
    context.idioma = idioma


@given("el usuario ingresa el rating: '{rating}'")
def step_impl(context, rating):
    rating = [m_rating.strip() for m_rating in rating.split(',')]
    context.rating = rating


@given("el usuario ingresa el rango: '{rango}'")
def step_impl(context, rango):
    rango = [m_rango.strip() for m_rango in rango.split(',')]
    if len(rango) > 0 and rango[0].isdigit():
        context.fecha_inicio = int(rango[0])
    if len(rango) > 1 and rango[1].isdigit():
        context.fecha_fin = int(rango[1])


@when("busque la películas por {criterio}")
def step_impl(context, criterio):
    if criterio == 'título':
        resultado, mensaje = get_pelicula_titulo(context.peliculas,
                                                 context.titulo)
    elif criterio == 'idioma':
        resultado, mensaje = get_pelicula_idiomas(context.peliculas,
                                                  context.idioma)
    elif criterio == 'rating':
        resultado, mensaje, error = get_pelicula_rating(context.peliculas,
                                                        context.rating)
        context.error = error
    elif criterio == 'rango':
        if 'fecha_inicio' in context and 'fecha_fin' in context:
            resultado, mensaje = get_pelicula_fecha_estreno(
                context.peliculas, context.fecha_inicio, context.fecha_fin)
        elif 'fecha_inicio' in context:
            resultado, mensaje = get_pelicula_fecha_estreno(
                context.peliculas, anio_inicio=context.fecha_inicio)
        elif 'fecha_fin' in context:
            resultado, mensaje = get_pelicula_fecha_estreno(
                context.peliculas, anio_fin=context.fecha_fin)
        else:
            resultado, mensaje = get_pelicula_fecha_estreno(context.peliculas)
    print(resultado)
    print(mensaje)
    context.resultado = resultado
    context.mensaje = mensaje


@then("obtendrá {total} películas que coincidan")
def step_impl(context, total):
    assert len(context.resultado) == int(total)


@then("los título de estas películas son")
def step_impl(context):
    son_peliculas_esperadas = True
    peliculas_esperadas = []
    for row in context.table:
        peliculas_esperadas.append(row['TITULO'])
    for pelicula in context.resultado:
        if pelicula.titulo not in peliculas_esperadas:
            print("No estan " + pelicula.titulo)
            son_peliculas_esperadas = False
    assert son_peliculas_esperadas is True


@then("obtiene el siguiente mensaje '{mensaje}'")
def step_impl(context, mensaje):
    assert context.mensaje == mensaje


@then("obtiene el mensaje de error '{error}'")
def step_impl(context, error):
    context.error = context.error.replace("'", '')
    assert context.error == error
