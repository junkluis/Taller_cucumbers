"""Funciones necesarias para busqueda de peliculas."""

def get_pelicula_titulo(lista_peliculas, titulo):
	"""Busqueda de peliculas por tilulo"""
	busqueda = list(filter(lambda x: titulo.lower() in x.titulo.lower(), lista_peliculas))
	if len(busqueda)>0:
		mensaje = 'Se encontraron '+str(len(busqueda))+' película(s) que contienen en su título la palabra: ' + titulo
	else:
		mensaje = 'No se encontró ninguna película con el título especificado.'
	return busqueda, mensaje


def get_pelicula_rating(lista_peliculas, ratings):
	"""Busqueda de peliculas por raiting"""
	valores_permitidos = ["G", "PG", "PG-13", "R", "NC-17" ]
	valores_no_permitidos = []
	for rate in ratings:
		if rate not in valores_permitidos:
			valores_no_permitidos.append(rate)

	busqueda = list(filter(lambda x: x.rating in ratings, lista_peliculas))
	if len(busqueda)>0:
		mensaje = 'Se encontraron '+str(len(busqueda))+' película(s).'
	else:
		mensaje = 'No se encontró ninguna película disponible para esa audiencia.'

	if(len(valores_no_permitidos) > 0):
		error = "Los ratings "+str(valores_no_permitidos)+" no son una opción disponible para búsqueda."
	else:
		error = None
	return busqueda, mensaje, error



def get_pelicula_idiomas(lista_peliculas, idioma):
	"""Busqueda de peliculas por raiting"""

	busqueda = list(filter(lambda x: idioma in x.idioma, lista_peliculas))
	if len(busqueda)>0:
		mensaje = 'Se encontraron '+str(len(busqueda))+' película(s).'
	else:
		mensaje = 'No se encontró ninguna película en '+idioma
	return busqueda, mensaje

'''
def get_pelicula_elenco(lista_peliculas, lista_actores):
	"""Busqueda de peliculas segun su elenco por una lista de actores"""

	busqueda = list(filter(lambda x: revisar_lista_elenco( x.elenco ,lista_actores), lista_peliculas))
	if len(busqueda)>0:
		mensaje = 'Se encontraron '+str(len(busqueda))+' película(s).'
	else:
		mensaje = 'No se encontró ninguna película con los actores en la lista.'
	return busqueda, mensaje
'''

def get_pelicula_fecha_estreno(lista_peliculas, anio_inicio=1900, anio_fin=2020):
	if(anio_inicio > anio_fin):
		mensaje = 'El año inicial no puede ser mayor que el año final de búsqueda.'
		busqueda = []
	else:
		busqueda = list(filter(lambda x: anio_inicio <= x.estreno <= anio_fin, lista_peliculas))
		if len(busqueda)>0:
			mensaje = 'Se encontraron '+str(len(busqueda))+' película(s).'
		else:
			mensaje = 'Ninguna pelicula fue estrenada durante los año ' + str(anio_inicio) + " y " + str(anio_fin)
	return busqueda, mensaje


def revisar_lista_elenco(elenco, lista_autores):
	return lista_autores in [elenco[i:len(lista_autores)+i] for i in range(len(elenco))]