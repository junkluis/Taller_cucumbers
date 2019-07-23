# language: es

Característica: Buscar películas por su fecha de estreno

  @peliculasPorFecha
  Escenario: Filtrar películas por fecha
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el anio inicio: '2000' y el anio final: '2015'
      Cuando busque la películas por fechas
      Entonces obtendrá 2 películas que coincidan
      Y los título de estas películas son
      | TITULO        |
      | Ant-Man (película)     |
      | American Psycho        |
      Y obtiene el siguiente mensaje 'Se encontraron 2 película(s).'


  @peliculasPorFecha
  Escenario: Filtrar películas por fecha, sin ingresar fechas
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | El rey león                | Jon Favreau      | Donald Glover, John Oliver, Seth Rogen           | aventura     | ingles, espanol          | 2019     | G         |
     | Toy Story 3                | Josh Cooley      | Tom Hanks, Tim Allen, Joan Cusack                | animada      | ingles, aleman           | 2010     | G         |
     | Buscando a Nemo            | Andrew Stanton   | Albert Brooks, Ellen DeGeneres, Alexander Gould  | animada      | ingles, aleman           | 2003     | PG        |
      Dada el usuario ingresa el anio inicio: ' ' y el anio final: ' '
      Cuando busque la películas por fechas
      Entonces obtendrá 3 películas que coincidan
      Y los título de estas películas son
      | TITULO        |
      | El rey león   |
      | Toy Story 3   |
      | Buscando a Nemo|
      Y obtiene el siguiente mensaje 'Se encontraron 3 película(s).'

  @peliculasPorFecha
  Escenario: Filtrar películas por fecha
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el anio inicio: '2020' y el anio final: '2015'
      Cuando busque la películas por fechas
      Entonces obtendrá 0 películas que coincidan
      Y obtiene el siguiente mensaje 'El año inicial no puede ser mayor que el año final de búsqueda.'

  @peliculasPorFecha
  Escenario: Filtrar películas por fecha
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el anio inicio: '2001' y el anio final: '2014'
      Cuando busque la películas por fechas
      Entonces obtendrá 0 películas que coincidan
      Y obtiene el siguiente mensaje 'Ninguna pelicula fue estrenada durante los año 2001 y 2014'