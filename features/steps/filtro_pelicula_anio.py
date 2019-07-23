from behave import *
from src.Pelicula import *
from src.Cine import *

#Condiciones antes de empezar cualquier STEP
def before_scenario(context, scenario):
	context = {}



@given("el usuario ingresa un rango de año: '{anio_inicio} {anio_fin}'")
def step_impl(context, anio_inicio, anio_fin):
    context.anio = 'Existe'
    context.anio_inicio = anio_inicio
    context.anio_fin = anio_fin

@given("el usuario no ingresa ningún rango de año")
def step_impl(context):
    context.anio = ''
