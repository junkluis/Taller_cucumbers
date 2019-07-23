# language: es

Característica: Buscar películas por su fecha de estreno

  @peliculasPorEstreno
  Escenario: Filtrar películas que contienen en su fecha de estreno entre '2010, 2016'
      Dado un conjunto de películas con estreno
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RATING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el estreno: '2010, 2016'
      Cuando busque la películas por estreno
      Entonces obtendrá 1 película que coincida con el estreno
      Y el estreno de esta película es
      | TITULO              |  ESTRENO  |
      | Ant-Man (película) |   2015     |
      Y obtiene el siguiente mensaje3 'Se encontraron 1 película(s).'


  @peliculasPorEstreno
  Escenario: Filtrar películas por título, sin encontrar resultado
      Dado un conjunto de películas con estreno
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RATING   |
     | El rey león                | Jon Favreau      | Donald Glover, John Oliver, Seth Rogen           | aventura     | ingles, espanol          | 2019     | G         |
     | Toy Story 3                | Josh Cooley      | Tom Hanks, Tim Allen, Joan Cusack                | animada      | ingles, aleman           | 2010     | G         |
     | Buscando a Nemo            | Andrew Stanton   | Albert Brooks, Ellen DeGeneres, Alexander Gould  | animada      | ingles, aleman           | 2003     | PG        |
      Dada el usuario ingresa el estreno: '2005, 2009'
      Cuando busque la películas por estreno
      Entonces obtendrá 0 películas que coincidan con el estreno
      Y obtiene el siguiente mensaje3 'Ninguna pelicula fue estrenada durante los año 2005 y 2009.'

