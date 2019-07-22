# language: es

Característica: Buscar peliculas por su titulo

  Antecedentes:
      Dado un conjunto de peliculas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | El rey león                | Jon Favreau      | Donald Glover, John Oliver, Seth Rogen           | aventura     | ingles, espanol          | 2019     | G         |
     | Toy Story 3                | Josh Cooley      | Tom Hanks, Tim Allen, Joan Cusack                | animada      | ingles, aleman           | 2010     | G         |
     | Buscando a Nemo            | Andrew Stanton   | Albert Brooks, Ellen DeGeneres, Alexander Gould  | animada      | ingles, aleman           | 2003     | PG        |
     | Spider-Man: Lejos de casa  | Jon Watts        | Tom Holland, Jake Gyllenhaal, Zendaya            | superheroes  | ingles                   | 2019     | PG        |
     | Avengers: Age of Ultron    | Joss Whedon      | Robert Downey Jr., Chris Hemsworth, Mark Ruffalo | superheroes  | ingles                   | 2015     | PG-13     |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |


  @peliculasPorTitulo
  Escenario: Filtrar peliculas que contienen en su titulo la palabra 'Hal'
      Dada el usuario ingresa el titulo: 'Hal'
      Cuando busque la pelicula por titulo
      Entonces obtendrá 2 peliculas que coincidan
      Y los titulos de estas peliculas son
      | TITULO        |
      | Halloween     |
      | Halloween II  |
      Y obtiene el siguiente mensaje 'Se encontraron 2 pelicula(s) que contienen en su titulo la palabra: Ha'


  @peliculasPorTitulo
  Escenario: Filtrar peliculas por titulo, sin encontrar resultado
      Dada el usuario ingresa el titulo: 'xyz'
      Cuando busque la pelicula por titulo
      Entonces obtendrá 0 peliculas que coincidan
      Y obtiene el siguiente mensaje 'Se encontraron 2 pelicula(s) que contienen en su titulo la palabra: Ha'

