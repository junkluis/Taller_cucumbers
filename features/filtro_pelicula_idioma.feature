# language: es

Característica: Buscar películas por su idioma

@peliculasPorIdioma
  Escenario: Filtrar películas que están diponibles en el idioma 'aleman'
      Dado otro conjunto más de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS          | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles           | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman           | 2000     | NC-17     |
      Dada el usuario ingresa un idioma: 'aleman'
      Cuando se busque la película por idioma
      Entonces vamos a obtener 1 película(s) que coincidan
      Y se muestran las siguientes películas
      | TITULO               |
      | American Psycho      |
      Y recibo el siguiente mensaje 'Se encontraron 1 película(s).'

@peliculasPorIdioma
  Escenario: Filtrar películas que están diponibles en el idioma 'chino'
      Dado otro conjunto más de películas
     | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS          | ESTRENO  | RAITING   |
     | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles           | 2015     | PG-13     |
     | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, espanol  | 1978     | R         |
     | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, espanol  | 1081     | R         |
     | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman           | 2000     | NC-17     |
      Dada el usuario ingresa un idioma: 'chino'
      Cuando se busque la película por idioma
      Entonces vamos a obtener 0 película(s) que coincidan
      Y recibo el siguiente mensaje 'No se encontró ninguna película en chino'