from behave import *
from src.Pelicula import *
from src.Cine import *

#Condiciones antes de empezar cualquier STEP
def before_scenario(context, scenario):
	context = {}


#Obtener la lista de peliculas (datos de prueba)
@given("un conjunto de películas")
def step_impl(context):
	lista_peliculas = []

	for row in context.table:

		elenco = []
		idiomas = []
		pelicula = Pelicula(row['TITULO'], row['DIRECTOR'], row['ELENCO'].split(","), row['GENERO'], row['IDIOMAS'].split(","), row['ESTRENO'], row['RAITING'])
		lista_peliculas.append(pelicula)

	context.peliculas = lista_peliculas


@given("el usuario ingresa el título: '{titulo}'")
def step_impl(context, titulo):
	context.titulo = titulo


@when("busque la películas por {criterio}")
def step_impl(context, criterio):
	if(criterio == 'título'):
		resultado, mensaje = get_pelicula_titulo(context.peliculas, context.titulo)
		print(resultado)
		context.resultado = resultado
		context.mensaje = mensaje
	if(criterio == 'rating'):
		resultado, mensaje, error = get_pelicula_rating(context.peliculas, context.ratings)
		print(resultado)
		context.resultado = resultado
		context.mensaje = mensaje
		context.error = error
	if (criterio == 'idioma'):
		resultado, mensaje = get_pelicula_idiomas(context.peliculas, context.idioma)
		print(resultado)
		context.resultado = resultado
		context.mensaje = mensaje
	if (criterio == 'año de estreno'):
		if context.anio == '':
			resultado, mensaje = get_pelicula_fecha_estreno(context.peliculas,'1900','2600')
		else:
			resultado, mensaje = get_pelicula_fecha_estreno(context.peliculas, context.anio_inicio, context.anio_fin)
		print(resultado)
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
	print(mensaje)
	print(context.mensaje)
	assert context.mensaje == mensaje

@then("obtiene el siguiente error '{error}'")
def step_impl(context, error):
	print(error)
	print(context.error)
	assert context.error == error
