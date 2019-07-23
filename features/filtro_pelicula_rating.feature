# language: es

Característica: Buscar películas por su rating

  @peliculasPorRating
  Escenario: Filtrar películas que tienen un rating 'R' y 'PG-13'
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el rating: '[R,PG-13]'
      Cuando busque la películas por rating
      Entonces obtendrá 3 películas que coincidan
      Y los título de estas películas son
      | TITULO                 |
      | Ant-Man (película)     |
      | Halloween              |
      | Halloween II           |
      Y obtiene el siguiente mensaje 'Se encontraron 3 película(s).'

  @peliculasPorRating
  Escenario: Filtrar películas que tienen un rating 'M' y un rating 'R'
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el rating: '[M,R]'
      Cuando busque la películas por rating
      Entonces obtendrá 2 películas que coincidan
	  | TITULO                 |
      | Halloween              |
      | Halloween II           |
      Y obtiene el siguiente mensaje 'Se encontraron 2 película(s).'
	  Y obtiene el siguiente error 'Los ratings ['[', 'M', ',', ']'] no son una opción disponible para búsqueda.'
	  
	  

  @peliculasPorRating
  Escenario: Filtrar películas que tienen un rating 'M' y 'F'
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el rating: '[M,F]'
      Cuando busque la películas por rating
      Entonces obtendrá 0 películas que coincidan
      Y obtiene el siguiente mensaje 'No se encontró ninguna película disponible para esa audiencia.'
	  Y obtiene el siguiente error 'Los ratings ['[', 'M', ',', 'F', ']'] no son una opción disponible para búsqueda.'

	  
