# language: es

Característica: Buscar películas por fecha

  @peliculasPorFecha
  Escenario: Filtrar películas que contienen el año: '1900,2010'
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el año: '1900,2010'
      Cuando busque la películas por fecha
      Entonces obtendrá 2 películas que coincidan
      Y los título de estas películas son
      | TITULO                     |
      | Halloween                  |
      | American Psycho            |
      Y obtiene el siguiente mensaje 'Se encontraron 2 película(s).'

  @peliculasPorFecha
  Escenario: Filtrar películas que contienen el año: '2010,1900'
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el año: '2010,1900'
      Cuando busque la películas por fecha
      Entonces obtendrá 0 películas que coincidan
      Y los título de estas películas son
      | TITULO                     |
      Y obtiene el siguiente mensaje 'El año inicial no puede ser mayor que el año final de búsqueda.'

  @peliculasPorFecha
  Escenario: Filtrar películas que contienen el año: '2050,3000'
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el año: '2050,3000'
      Cuando busque la películas por fecha
      Entonces obtendrá 0 películas que coincidan
      Y los título de estas películas son
      | TITULO                     |
      Y obtiene el siguiente mensaje 'Ninguna pelicula fue estrenada durante los año 2050 y 3000'

@peliculasPorFecha
  Escenario: Filtrar películas que contienen el año: '1900,2010'
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario no ingresa ningún año
      Cuando busque la películas por fecha
      Entonces obtendrá 3 películas que coincidan
      Y los título de estas películas son
      | TITULO                     |
      | Ant-Man (película)         |
      | Halloween                  |
      | American Psycho            |
      Y obtiene el siguiente mensaje 'Se encontraron 3 película(s).'