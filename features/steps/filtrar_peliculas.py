from behave import *
from src.Pelicula import *
from src.Pelicula import *

def before_scenario(context, scenario):
    context = {}


@given("un conjunto de películas")
def step_implement(context):
    lista_peliculas = []

    for row in context.table:
        pelicula = Pelicula(row["TITULO"], row["GENERO"], row["IDIOMAS"].split(","), row["ESTRENO"], row["RAITING"])
        peliculas.append(pelicula)

    context.lista_peliculas = lista_peliculas


@given("el usuario ingresa el título de la película: {titulo}")
def step_implement(context, titulo):
    context.titulo = titulo


@when("se busquen las películas por {criterio_busqueda}")
def step_implement(context, criterio_busqueda):
    lista_peliculas = context.lista_peliculas
    titulo = context.titulo

    if criterio_busqueda == "título":
        busqueda, mensaje = obtener_pelicula_titulo(lista_peliculas, titulo)
        context.busqueda = busqueda
        context.mensaje = mensaje


@then("obtendrá {total_peliculas} películas relacionadas")
def step_implement(context, total_peliculas):
    
    assert (len(context.busqueda) == int(total_peliculas))


@then("los títulos de las películas son:")
def step_implement(context):
    espero_estas_peliculas = True
    peliculas_esperadas = []

    for row in context.table:
        titulo_pelicula = row["TITULO"]
        peliculas_esperadas.append(titulo_pelicula)

    for pelicula in context.resultado:
        if pelicula not in peliculas_esperadas:
            print("No se esperaba la película: " + pelicula.titulo)
            espero_estas_peliculas = False
    
    assert (espero_estas_peliculas is True)

@then("obtiene el siguiente mensaje: {mensaje}")
def step_implement(context):

    assert (context.mensaje == mensaje)