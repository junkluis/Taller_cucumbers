class Pelicula(object):
	"""Clase Pelicula"""

	def __init__(self, titulo, director, elenco, genero, idioma, estreno, rating):
		
		self.titulo = titulo
		self.director = director
		self.elenco = elenco
		self.genero = genero
		self.idioma = idioma
		self.estreno = estreno
		self.rating = rating

	def __str__(self):
		return self.titulo

	def full_info(self):
		movie_str = self.titulo + " | Director: " + self.director + " ("+ str(self.estreno) + ")" + " ["+ str(self.raiting) + "]" + " | Genero:  " +str( self.genero ) +"\nReparto: " + str(self.elenco) + "\nIdiomas: " + str(self.idioma)
		return movie_str
