# language: es

Característica: Buscar películas por su rating

  @peliculasPorIdioma
  Escenario: Filtrar películas que contienen en su rating la palabra 'español'
      Dado un conjunto de películas con idioma
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RATING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el idioma: 'español'
      Cuando busque la películas por idioma
      Entonces obtendrá 2 películas que coincidan con el idioma
      Y los idioma de estas películas son
      | TITULO        |
      | Halloween     |
      | Halloween II |
      Y obtiene el siguiente mensaje2 'Se encontraron 2 película(s).'


  @peliculasPorIdioma
  Escenario: Filtrar películas por título, sin encontrar resultado
      Dado un conjunto de películas con idioma
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RATING   |
     | El rey león                | Jon Favreau      | Donald Glover, John Oliver, Seth Rogen           | aventura     | ingles, espanol          | 2019     | G         |
     | Toy Story 3                | Josh Cooley      | Tom Hanks, Tim Allen, Joan Cusack                | animada      | ingles, aleman           | 2010     | G         |
     | Buscando a Nemo            | Andrew Stanton   | Albert Brooks, Ellen DeGeneres, Alexander Gould  | animada      | ingles, aleman           | 2003     | PG        |
      Dada el usuario ingresa el rating: 'francés'
      Cuando busque la películas por estreno
      Entonces obtendrá 0 películas que coincidan con el idioma
      Y obtiene el siguiente mensaje2 'No se encontró ninguna película en español.'

