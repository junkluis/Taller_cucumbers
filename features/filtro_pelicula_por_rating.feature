# language: es

Característica: Buscar películas por rating

  @peliculasPorRating
  Escenario: Filtrar películas que contienen ratings PG-13 
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
  Dado el usuario ingresa un grupo de ratings: '[PG-13]'
  Cuando busque películas por rating
  Entonces los título de estas películas son:
      | TITULO             |
      | Ant-Man (película) |
  Y obtiene el siguiente mensaje 'Se encontraron 1 película(s).'

  @peliculasPorRating
  Escenario: Filtrar películas que contienen ratings PG-13, M-17, pero con uno de dichos valores que no se encuentre en la lista de valores permisibles
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
  Dado el usuario ingresa un grupo de ratings: '[PG-13, M-17]'
  Cuando busque películas por ratings
  Entonces los título de estas películas son:
      | TITULO             |
      | Ant-Man (película) |
  Entonces obtiene el siguiente mensaje 'Se encontraron 1 película(s).'
  Y se mostrará el siguiente mensaje 'Los ratings M-17 no son una opción disponible para búsqueda.'

  @peliculasPorRating
  Escenario: Filtrar películas que contienen ratings M-17, sin ningun resultado
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
  Dado el usuario debe ingresar un grupo de ratings: '[M-17]'
  Cuando busque películas por ratings
  Entonces obtiene el siguiente mensaje 'No se encontró ninguna película disponible para esa audiencia.'
