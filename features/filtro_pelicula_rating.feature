# language: es

Característica: Buscar películas por su raiting

@peliculasPorRaiting
  Escenario: Filtrar películas que son clasificadas con el raiting PG-13
      Dado otro conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el(los) raiting(s): PG-13
      Cuando al buscar películas por el raiting
      Entonces se encontrarán 1 película(s).
      Y estas películas son
      | TITULO                  |
      | Ant-Man (película)      |
      Y se recibe el siguiente mensaje 'Se encontraron 1 película(s).'

@peliculasPorRaiting
  Escenario: Filtrar películas por raiting con valores permisibles y no permisibles
      Dado otro conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | El rey león                | Jon Favreau      | Donald Glover, John Oliver, Seth Rogen           | aventura     | ingles, espanol          | 2019     | G         |
     | Toy Story 3                | Josh Cooley      | Tom Hanks, Tim Allen, Joan Cusack                | animada      | ingles, aleman           | 2010     | G         |
     | Buscando a Nemo            | Andrew Stanton   | Albert Brooks, Ellen DeGeneres, Alexander Gould  | animada      | ingles, aleman           | 2003     | PG        |
      Dada el usuario ingresa el(los) raiting(s): PG, B
      Cuando al buscar películas por el raiting
      Entonces se encontrarán 1 película(s).
      Y estas películas son
      | TITULO                  |
      | Buscando a Nemo         |
      Y se recibe el siguiente mensaje 'Se encontraron 1 película(s).'
      Y se recibe el siguiente error 'Los ratings ['B'] no son una opción disponible para búsqueda.'

@peliculasPorRaiting
  Escenario: Filtrar películas por raiting, sin encontrar resultado
      Dado otro conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | El rey león                | Jon Favreau      | Donald Glover, John Oliver, Seth Rogen           | aventura     | ingles, espanol          | 2019     | G         |
     | Toy Story 3                | Josh Cooley      | Tom Hanks, Tim Allen, Joan Cusack                | animada      | ingles, aleman           | 2010     | G         |
     | Buscando a Nemo            | Andrew Stanton   | Albert Brooks, Ellen DeGeneres, Alexander Gould  | animada      | ingles, aleman           | 2003     | PG        |
      Dada el usuario ingresa el(los) raiting(s): PG-13
      Cuando al buscar películas por el raiting
      Entonces se encontrarán 0 película(s).
     Y se recibe el siguiente mensaje 'No se encontró ninguna película disponible para esa audiencia.'
