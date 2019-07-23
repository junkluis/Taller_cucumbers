# language: es

Característica: Buscar películas por su título

  @peliculasPorRating
  Escenario: Filtrar películas que tengan un valor de R,PG-13
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el rating: 'R,PG-13'
      Cuando busque la películas por rating
      Entonces obtendrá 3 películas que coincidan
      Y los título de estas películas son
      | TITULO        |
      | Halloween     |
      | Halloween II  |
      | Ant-Man (película)  |
      Y obtiene el siguiente mensaje 'Se encontraron 3 película(s) de rating : R,PG-13'


  @peliculasPorRating
  Escenario: Filtrar películas por rating, sin encontrar resultado
      Dado un conjunto de rating
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | El rey león                | Jon Favreau      | Donald Glover, John Oliver, Seth Rogen           | aventura     | ingles, espanol          | 2019     | G         |
     | Toy Story 3                | Josh Cooley      | Tom Hanks, Tim Allen, Joan Cusack                | animada      | ingles, aleman           | 2010     | G         |
     | Buscando a Nemo            | Andrew Stanton   | Albert Brooks, Ellen DeGeneres, Alexander Gould  | animada      | ingles, aleman           | 2003     | PG        |
      Dada el usuario ingresa el rating: 'R'
      Cuando busque la películas por título
      Entonces obtendrá 0 películas que coincidan
      Y obtiene el siguiente mensaje 'No se encontró ninguna película con el título especificado.'
