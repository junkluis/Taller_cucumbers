from behave import *
from src.Pelicula import *
from src.Cine import *

#Condiciones antes de empezar cualquier STEP
def before_scenario(context, scenario):
	context = {}

@given("el usuario ingresa el rating: '{ratings}'")
def step_impl(context, ratings):
	context.ratings = ratings


