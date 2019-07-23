# language: es

Característica: Buscar películas por su idioma

  @peliculasPorIdioma
  Escenario: Filtrar películas que están en el idioma 'aleman'
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dado el usuario especifica el idioma: 'aleman'
      Cuando busque las películas por idioma
      Entonces obtendrá 1 películas que coincidan
      | TITULO           |
      | Halloween        |
      Y obtiene el siguiente mensaje 'Se encontraron 1 película(s).'
	  
  @peliculasPorIdioma
  Escenario: Filtrar películas que están en el idioma 'cantones'
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | El rey león                | Jon Favreau      | Donald Glover, John Oliver, Seth Rogen           | aventura     | ingles, espanol          | 2019     | G         |
     | Toy Story 3                | Josh Cooley      | Tom Hanks, Tim Allen, Joan Cusack                | animada      | ingles, aleman           | 2010     | G         |
     | Buscando a Nemo            | Andrew Stanton   | Albert Brooks, Ellen DeGeneres, Alexander Gould  | animada      | ingles, aleman           | 2003     | PG        |
      Dado el usuario especifica el idioma: 'cantones'
      Cuando busque las películas por idioma
      Entonces obtendrá 0 películas que coincidan
      Y obtiene el siguiente mensaje 'No se encontró ninguna película en cantones'