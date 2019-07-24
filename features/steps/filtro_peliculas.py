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

@given("el usuario ingresa el rating: '{rating}'")
def step_impl(context, rating):
	context.rating = rating

@given("el usuario ingresa el idioma: '{idioma}'")
def step_impl(context, idioma):
	context.idioma = idioma

@given("el usuario ingresa el rango: '{rango}'")
def step_impl(context, rango):
	context.rango = rango.split(",")

@when("busque la películas por {criterio}")
def step_impl(context, criterio):
	if(criterio == 'título'):
		resultado, mensaje = get_pelicula_titulo(context.peliculas, context.titulo)
		print(resultado)
		context.resultado = resultado
		context.mensaje = mensaje
	elif(criterio == 'rating'):
		resultado, mensaje, error = get_pelicula_rating(context.peliculas, context.rating)
		print(resultado,mensaje,error)
		context.resultado = resultado
		context.mensaje = mensaje
		context.error = error
	elif(criterio == 'idioma'):
		resultado, mensaje = get_pelicula_idiomas(context.peliculas, context.idioma)
		print(resultado)
		context.resultado = resultado
		context.mensaje = mensaje
	elif(criterio == 'fecha de estreno'):
		if len(context.rango)==2:
			resultado, mensaje = get_pelicula_fecha_estreno(context.peliculas, int(context.rango[0]), int(context.rango[1]))
			print(resultado)
			context.resultado = resultado
			context.mensaje = mensaje
		else:
			resultado, mensaje = get_pelicula_fecha_estreno(context.peliculas)
			print(resultado)
			context.resultado = resultado
			context.mensaje = mensaje

@then("obtendrá {total} películas que coincidan")
def step_impl(context, total):
	assert len(context.resultado) == int(total)

@then("se encontraron {total} películas")
def step_impl(context, total):
	assert len(context.resultado) == int(total)

@then("se encontraron {total} película(s).")
def step_impl(context, total):
	print(len(list(context.resultado)))
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

@then("obtuvo el siguiente error: '{error}'")
def step_impl(context, error):
	print(error)
	print(context.error)
	assert context.error == error

@then("No se encontró ninguna película en {idioma}")
def step_impl(context,idioma):
	assert context.idioma == idioma and len(context.resultado) == 0
