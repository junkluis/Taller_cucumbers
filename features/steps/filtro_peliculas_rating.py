from behave import *
from src.Pelicula import *
from src.Cine import *

#Condiciones antes de empezar cualquier STEP
def before_scenario(context, scenario):
	context = {}


#Obtener la lista de peliculas (datos de prueba)
@given("un conjunto de películas con rating")
def step_impl(context):
	lista_peliculas = []

	for row in context.table:

		elenco = []
		idiomas = []
		pelicula = Pelicula(row['TITULO'], row['DIRECTOR'], row['ELENCO'].split(","), row['GENERO'], row['IDIOMAS'].split(","), row['ESTRENO'], row['RATING'])
		lista_peliculas.append(pelicula)

	context.peliculas = lista_peliculas


@given("el usuario ingresa el rating: '{rating}'")
def step_impl(context, rating):
	context.rating = rating


@when("busque la películas por rating {criterio}")
def step_impl(context, criterio):
	if(criterio == 'rating'):
		resultado, mensaje = get_pelicula_rating(context.peliculas, context.rating)
		print(resultado)
		context.resultado = resultado
		context.mensaje = mensaje


@then("obtendrá {total} películas que coincidan con el rating")
def step_impl(context, total):
	assert len(context.resultado) == int(total)


@then("los rating de estas películas son")
def step_impl(context):
	son_peliculas_esperadas = True
	peliculas_esperadas = []
	for row in context.table:
		peliculas_esperadas.append(row['TITULO'])
	for pelicula in context.resultado:
		if pelicula.rating not in peliculas_esperadas:
			print("No estan " + pelicula.rating)
			son_peliculas_esperadas = False
	assert son_peliculas_esperadas is True

@then("obtiene el siguiente mensaje1 '{mensaje}'")
def step_impl(context, mensaje):
	print(mensaje)
	print(context.mensaje)
	assert context.mensaje == mensaje
