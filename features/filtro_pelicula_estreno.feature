# language: es

Característica: Buscar películas por su año de estreno

  @peliculasPorAñoEstreno
  Escenario: Filtrar películas que se estrenaron en el rango de entre 2010 y 2020
      Dado el conjunto de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
      Dada el usuario ingresa el rango de años: (2010, 2020)
      Cuando se busca la películas por estreno
      Entonces se van a obtener 1 películas
      Y las películas encontradas son
      | TITULO                  |
      | Ant-Man (película)      |
      Y aparece el siguiente mensaje 'Se encontraron 1 película(s)'