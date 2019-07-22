from src.Cine import *
from src.Pelicula import *


if __name__ == '__main__':

	movie_A = Pelicula( "Carrie", "Brian De Palma",  ["John Travolta", "William Katt", "Betty Buckley"], "suspenso", ["ingles", "español"], 1976, "R")
	movie_B = Pelicula( "The Adventures Of Tinti", "Steven Spielberg",  ["Jamie Bell", "Andy Serkis", "Daniel Craig"], "suspenso", ["ingles", "español"], 2011, "PG")
	movie_C = Pelicula( "The Bourne Identity ", "Brian De Palma",  ["Matt Damon", "Franka Potente", "Chris Cooper"], "accion", ["ingles"], 2002, "PG-13")
	movie_D = Pelicula( "The Great Dictator ", "Doug Liman",  ["Charlie Chaplin", "Paulette Goddard", "Jack Oakie"], "comedia", ["ingles", "esperanto"], 1940, "PG")

	lista_peliculas = [movie_A, movie_B, movie_C, movie_D]

	resultado = get_pelicula_titulo(lista_peliculas, "a")
	print(resultado)

	resultado = get_pelicula_raiting(lista_peliculas, ["R", "PG"])
	print(resultado)

	resultado = get_pelicula_idiomas(lista_peliculas, "español")
	print(resultado)

	resultado = get_pelicula_elenco(lista_peliculas, ["Jamie Bell", "Andy Serkis"])
	print(resultado)

	resultado = get_pelicula_fecha_estreno(lista_peliculas, 1999, 2012 )
	print(resultado)
