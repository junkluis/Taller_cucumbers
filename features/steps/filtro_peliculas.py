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
		pelicula = Pelicula(row['TITULO'], row['DIRECTOR'], row['ELENCO'].split(","), row['GENERO'], row['IDIOMAS'].split(","), int(row['ESTRENO']), row['RAITING'])
		lista_peliculas.append(pelicula)

	context.peliculas = lista_peliculas


@given("el usuario ingresa el título: '{titulo}'")
def step_impl(context, titulo):
	context.titulo = titulo

@given("el usuario ingresa el idioma: '{idioma}'")
def step_impl(context, idioma):
	context.idioma = idioma

@given("el usuario ingresa una lista de ratings: '{ratings}'")
def step_impl(context, ratings):
	context.ratings = ratings.split(",")

@given("el usuario ingresa el rango: '{rango}'")
def step_impl(context, rango):
	if rango:
		rango_ = rango.split(",")
		context.inicio = int(rango_[0])
		context.fin = int(rango_[1])

@given("el usuario ingresa el rango: ''")
def step_impl(context):
	context.inicio = None
	context.fin = None

@when("busque la películas por {criterio}")
def step_impl(context, criterio):
	context.criterio = criterio
	if(criterio == 'título'):
		resultado, mensaje = get_pelicula_titulo(context.peliculas, context.titulo)
		context.resultado = resultado
		context.mensaje = mensaje
	if(criterio == 'ratings'):
		resultado, mensaje, error = get_pelicula_rating(context.peliculas, context.ratings)
		context.resultado = resultado
		context.mensaje = mensaje
		context.error = error
	if(criterio == 'idioma'):
		resultado, mensaje = get_pelicula_idiomas(context.peliculas, context.idioma)
		context.resultado = resultado
		context.mensaje = mensaje
	if(criterio == 'ano'):
		if context.inicio and context.fin:
			resultado, mensaje = get_pelicula_fecha_estreno(context.peliculas, context.inicio, context.fin)
			context.resultado = resultado
			context.mensaje = mensaje
		else:
			resultado, mensaje = get_pelicula_fecha_estreno(context.peliculas)
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
	if(context.criterio == 'título' or context.criterio == 'idioma' or context.criterio == 'ano'):
		assert context.mensaje == mensaje
	if(context.criterio == 'ratings'):
		if context.error:
			assert context.error == mensaje
		else:
			assert context.mensaje == mensaje