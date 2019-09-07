# language: es

Característica: Buscar películas por su título

  @peliculasPorTítulo
  Escenario: Filtrar películas que contienen en su título la palabra 'Hal'
      Dado un conjunto de películas
     | TITULO                     | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | terror       | aleman                   | 2000     | NC-17     |
      Dado el usuario ingresa el título de la película: 'Hal'
      Cuando se busquen las películas por título
      Entonces obtendrá 2 películas relacionadas
      Y los títulos de las películas son:
      | TITULO        |
      | Halloween     |
      | Halloween II  |
      Y obtiene el siguiente mensaje: 'Se encontraron 2 película(s) que contienen en su título la palabra: Hal'


  @peliculasPorTítulo
  Escenario: Filtrar películas por título, sin encontrar resultado
      Dado un conjunto de películas
     | TITULO                     | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | El rey león                | aventura     | ingles, espanol          | 2019     | G         |
     | Toy Story 3                | animada      | ingles, aleman           | 2010     | G         |
     | Buscando a Nemo            | animada      | ingles, aleman           | 2003     | PG        |
      Dado el usuario ingresa el título de la película: 'xyz'
      Cuando se busquen las películas por título
      Entonces obtendrá 0 películas relacionadas
      Y obtiene el siguiente mensaje: 'No se encontró ninguna película con el título especificado.'

