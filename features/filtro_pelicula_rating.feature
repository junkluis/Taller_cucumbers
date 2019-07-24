# language: es

Característica: Buscar películas por ratings

  @peliculasPorRatings
  Escenario: Filtrar películas con los ratings '[PG-13, NC-17]'
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario especifica los ratings: 'PG-13,NC-17'
      Cuando busque las películas por rating
      Entonces obtendrá 2 películas que coincidan
      Y los título de estas películas son
      | TITULO                 |
      | Ant-Man (película)     |
      | American Psycho        |
      Y obtiene el siguiente mensaje 'Se encontraron 2 película(s).'


  @peliculasPorRatings
  Escenario: Filtrar películas con los ratings '[PG-6,PG]' donde el primero no es válido
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | El rey león                | Jon Favreau      | Donald Glover, John Oliver, Seth Rogen           | aventura     | ingles, espanol          | 2019     | G         |
     | Toy Story 3                | Josh Cooley      | Tom Hanks, Tim Allen, Joan Cusack                | animada      | ingles, aleman           | 2010     | G         |
     | Buscando a Nemo            | Andrew Stanton   | Albert Brooks, Ellen DeGeneres, Alexander Gould  | animada      | ingles, aleman           | 2003     | PG        |
      Dada el usuario especifica los ratings: 'PG-6,PG'
      Cuando busque las películas por rating
      Entonces obtendrá 1 películas que coincidan
      Y los título de estas películas son
      | TITULO                 |
      | Buscando a Nemo        |
      Y obtiene el siguiente mensaje 'Los ratings ['PG-6'] no son una opción disponible para búsqueda.'


  @peliculasPorRatings
  Escenario: Filtrar películas con los ratings '[PG,G]'
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario especifica los ratings: 'PG,G'
      Cuando busque las películas por rating
      Entonces obtendrá 0 películas que coincidan
      Y obtiene el siguiente mensaje 'No se encontró ninguna película disponible para esa audiencia.'