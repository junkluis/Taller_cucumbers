# language: es

Característica: Buscar películas por su título

  Antecedentes:
      Dado un conjunto de películas
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


  @peliculasPorTítulo
  Escenario: Filtrar películas que contienen en su título la palabra 'Hal'
      Dada el usuario ingresa el título: 'Hal'
      Cuando busque la películas por título
      Entonces obtendrá 2 películas que coincidan
      Y los título de estas películas son
      | TITULO        |
      | Halloween     |
      | Halloween II  |
      Y obtiene el siguiente mensaje 'Se encontraron 2 película(s) que contienen en su título la palabra: Ha'


  @peliculasPorTítulo
  Escenario: Filtrar películas por título, sin encontrar resultado
      Dada el usuario ingresa el título: 'xyz'
      Cuando busque la películas por título
      Entonces obtendrá 0 películas que coincidan
      Y obtiene el siguiente mensaje 'Se encontraron 2 película(s) que contienen en su título la palabra: Ha'

