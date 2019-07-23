# language: es

Característica: Buscar películas por su rating

  @peliculasPorRating
  Escenario: Filtrar películas que contienen en su rating la palabra 'R'
      Dado un conjunto de películas con rating
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RATING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el rating: 'R'
      Cuando busque la películas por rating
      Entonces obtendrá 2 películas que coincidan con el rating
      Y los rating de estas películas son
      | TITULO        |
      | Halloween     |
      | Halloween II |
      Y obtiene el siguiente mensaje1 'Se encontraron 2 película(s).'


  @peliculasPorRating
  Escenario: Filtrar películas por título, sin encontrar resultado
      Dado un conjunto de películas con rating
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RATING   |
     | El rey león                | Jon Favreau      | Donald Glover, John Oliver, Seth Rogen           | aventura     | ingles, espanol          | 2019     | G         |
     | Toy Story 3                | Josh Cooley      | Tom Hanks, Tim Allen, Joan Cusack                | animada      | ingles, aleman           | 2010     | G         |
     | Buscando a Nemo            | Andrew Stanton   | Albert Brooks, Ellen DeGeneres, Alexander Gould  | animada      | ingles, aleman           | 2003     | PG        |
      Dada el usuario ingresa el rating: 'RRR'
      Cuando busque la películas por rating
      Entonces obtendrá 0 películas que coincidan con el rating
      Y obtiene el siguiente mensaje1 'No se encontró ninguna película disponible para esa audiencia.'

