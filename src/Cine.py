"""Funciones necesarias para busqueda de peliculas."""

def get_pelicula_titulo(lista_peliculas, titulo):
	"""Busqueda de peliculas por tilulo"""
	busqueda = list(filter(lambda x: titulo.lower() in x.titulo.lower(), lista_peliculas))
	if len(busqueda)>0:
		mensaje = 'Se encontraron '+str(len(busqueda))+' película(s) que contienen en su título la palabra: ' + titulo
	else:
		mensaje = 'No se encontró ninguna película con el título especificado.'
	return busqueda, mensaje


def get_pelicula_raiting(lista_peliculas, raiting):
	"""Busqueda de peliculas por raiting"""

	busqueda = list(filter(lambda x: x.raiting in raiting, lista_peliculas))
	if len(busqueda)>0:
		mensaje = 'Se encontraron '+str(len(busqueda))+' película(s).'
	else:
		mensaje = 'No se encontró ninguna película disponible para esa audiencia.'
	return busqueda, mensaje


def get_pelicula_idiomas(lista_peliculas, idioma):
	"""Busqueda de peliculas por raiting"""

	busqueda = list(filter(lambda x: idioma in x.idioma, lista_peliculas))
	if len(busqueda)>0:
		mensaje = 'Se encontraron '+str(len(busqueda))+' película(s).'
	else:
		mensaje = 'No se encontró ninguna película en '+idioma
	return busqueda, mensaje


def get_pelicula_elenco(lista_peliculas, lista_actores):
	"""Busqueda de peliculas segun su elenco por una lista de actores"""

	busqueda = list(filter(lambda x: revisar_lista_elenco( x.elenco ,lista_actores), lista_peliculas))
	if len(busqueda)>0:
		mensaje = 'Se encontraron '+str(len(busqueda))+' película(s).'
	else:
		mensaje = 'No se encontró ninguna película con los actores en la lista.'
	return busqueda, mensaje


def get_pelicula_fecha_estreno(lista_peliculas, anio_inicio=1800, anio_fin=2020):
	busqueda = list(filter(lambda x: anio_inicio <= x.estreno <= anio_fin, lista_peliculas))
	if len(busqueda)>0:
		mensaje = 'Se encontraron '+str(len(busqueda))+' película(s).'
	else:
		mensaje = 'Ninguna pelicula fue estrenada durante los año ' + str(anio_inicio) + " y " + "str(anio_fin)"
	return busqueda, mensaje


def revisar_lista_elenco(elenco, lista_autores):
	return lista_autores in [elenco[i:len(lista_autores)+i] for i in range(len(elenco))]