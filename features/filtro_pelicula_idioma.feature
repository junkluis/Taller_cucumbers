# language: es

Característica: Buscar películas por su idioma

	@peliculasPorIdioma
	Escenario: Filtrar películas que tienen los idiomas aceptados
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el rating: 'PG,R'
      Cuando busque la películas por rating
      Entonces obtendrá 2 películas que coincidan
      Y los título de estas películas son
      | TITULO        		   |
      | Ant-Man (película)     |
      | Halloween   		   |
      | Halloween II           |
      Y obtiene el siguiente mensaje 'Se encontraron 2 película(s).'


   