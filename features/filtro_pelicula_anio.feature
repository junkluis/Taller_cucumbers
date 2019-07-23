# language: es

Característica: Buscar películas por su anio

  @peliculasPorAnio
  Escenario: Filtrar películas que se hayan estrenado entre el '1999' y '2016'
      Dado un conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa un rango de año: '1999 2016'
      Cuando busque la películas por año de estreno
      Entonces obtendrá 2 películas que coincidan
      Y los título de estas películas son
      | TITULO                 |
      | Ant-Man (película)     |
      | American Psycho        |
      Y obtiene el siguiente mensaje 'Se encontraron 2 película(s).'



