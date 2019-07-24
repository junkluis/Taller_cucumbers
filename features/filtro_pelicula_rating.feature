# language: es

Característica: Buscar películas por su ratings

  @peliculasPorRatings
  Escenario: Filtrar películas que contienen ratings:  ["G", "PG", "PG-13", "R", "NC-17"]
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa una lista de ratings: 'G,PG,PG-13,R,NC-17'
      Cuando busque la películas por ratings
      Entonces obtendrá 4 películas que coincidan
      Y los título de estas películas son
      | TITULO        |
      | Ant-Man (película)     |
      | Halloween II  |
      | Halloween     |
      | American Psycho  |
      Y obtiene el siguiente mensaje 'Se encontraron 4 película(s).'

  @peliculasPorRatings
  Escenario: Filtrar películas que contienen ratings:  'R,PG,ER' donde ER no esta disponible
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa una lista de ratings: 'R,PG,ER'
      Cuando busque la películas por ratings
      Entonces obtendrá 2 películas que coincidan
      Y los título de estas películas son
      | TITULO        |
      | Halloween II  |
      | Halloween     |
      Y obtiene el siguiente mensaje 'Los ratings ['ER'] no son una opción disponible para búsqueda.'
  @peliculasPorRatings
  Escenario: Filtrar películas que contienen ratings:  'PG', sin concidencias
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa una lista de ratings: 'PG'
      Cuando busque la películas por ratings
      Entonces obtendrá 0 películas que coincidan
      Y obtiene el siguiente mensaje 'No se encontró ninguna película disponible para esa audiencia.'
