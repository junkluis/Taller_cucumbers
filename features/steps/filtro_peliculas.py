from behave import *
from src.Pelicula import *
from src.Cine import *


def before_scenario(context, scenario):
	context = {}


@given("un conjunto de peliculas")
def step_impl(context):
	lista_peliculas = []

	for row in context.table:

		elenco = []
		idiomas = []
		pelicula = Pelicula(row['TITULO'], row['DIRECTOR'], row['ELENCO'].split(","), row['GENERO'], row['IDIOMAS'].split(","), row['ESTRENO'], row['RAITING'])
		lista_peliculas.append(pelicula)

	context.peliculas = lista_peliculas


@given("el usuario ingresa el titulo: '{titulo}'")
def step_impl(context, titulo):
	context.titulo = titulo


@when("busque la pelicula por {criterio}")
def step_impl(context, criterio):
	if(criterio == 'titulo'):
		resultado, mensaje = get_pelicula_titulo(context.peliculas, context.titulo)
		context.resultado = resultado
		context.mensaje = mensaje


@then("obtendrá {total} peliculas que coincidan")
def step_impl(context, total):
	assert len(context.resultado) == int(total)


@then("los titulos de estas peliculas son")
def step_impl(context):
	son_peliculas_esperadas = True
	peliculas_esperadas = []
	for row in context.table:
		peliculas_esperadas.append(row['TITULO'])
		print(peliculas_esperadas)
	for pelicula in context.resultado:
		print(pelicula.titulo)
		if pelicula.titulo not in peliculas_esperadas:
			print("No estan " + pelicula.titulo)
			son_peliculas_esperadas = False
	assert son_peliculas_esperadas is True

@then("obtiene el siguiente mensaje '{mensaje}'")
def step_impl(context, mensaje):
	assert context.mensaje == mensaje