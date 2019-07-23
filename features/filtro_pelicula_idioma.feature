# language: es

Característica: Buscar películas por su idioma

  @peliculasPorIdioma
  Escenario: Filtrar películas por idioma
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el idioma: 'ingles'
      Cuando busque la películas por idioma
      Entonces obtendrá 3 películas que coincidan
      Y los título de estas películas son
      | TITULO        |
      | Ant-Man (película)     |
      | Halloween              |
      | Halloween II           |
      Y obtiene el siguiente mensaje 'Se encontraron 3 película(s).'


  @peliculasPorIdioma
  Escenario: Filtrar películas por idioma, sin encontrar resultado
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | El rey león                | Jon Favreau      | Donald Glover, John Oliver, Seth Rogen           | aventura     | ingles, espanol          | 2019     | G         |
     | Toy Story 3                | Josh Cooley      | Tom Hanks, Tim Allen, Joan Cusack                | animada      | ingles, aleman           | 2010     | G         |
     | Buscando a Nemo            | Andrew Stanton   | Albert Brooks, Ellen DeGeneres, Alexander Gould  | animada      | ingles, aleman           | 2003     | PG        |
      Dada el usuario ingresa el idioma: 'chino'
      Cuando busque la películas por idioma
      Entonces obtendrá 0 películas que coincidan
      Y obtiene el siguiente mensaje 'No se encontró ninguna película en chino'
