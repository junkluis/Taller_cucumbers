# language: es

Característica: Buscar películas por su fecha

    @peliculasPorFecha
    Escenario: Filtrar películas por fecha de estreno entre '2005' y '2019'
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1981     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dado el usuario ingresa las fechas: '2005' y '2019'
        Cuando busque la películas por fecha
        Entonces obtendrá 1 películas que coincidan
        Y los título de estas películas son
        | TITULO                     |
        | Ant-Man (película)         |
        Y obtiene el siguiente mensaje 'Se encontraron 1 película(s).'

    @peliculasPorFecha
    Escenario: Filtrar películas por fecha de estreno sin ingresar algun rango de fechas
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1981     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dado el usuario no ingresa fechas
        Cuando busque la películas por fecha
        Entonces obtendrá 4 películas que coincidan
        Y los título de estas películas son
        | TITULO                     |
        | Ant-Man (película)         |
        | Halloween                  |
        | Halloween II               |
        | American Psycho            |
        Y obtiene el siguiente mensaje 'Se encontraron 4 película(s).'

    @peliculasPorFecha
    Escenario: Filtrar películas por fecha de estreno con un año inicial mayor a un año final
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1981     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dado el usuario ingresa las fechas: '2019' y '2005'
        Cuando busque la películas por fecha
        Entonces obtendrá 0 películas que coincidan
        Y obtiene el siguiente mensaje 'El año inicial no puede ser mayor que el año final de búsqueda.'

    @peliculasPorFecha
    Escenario: Filtrar películas por fecha de estreno sin encontrar resultados
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1981     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dado el usuario ingresa las fechas: '2001' y '2006'
        Cuando busque la películas por fecha
        Entonces obtendrá 0 películas que coincidan
        Y obtiene el siguiente mensaje 'Ninguna pelicula fue estrenada durante los año 2001 y 2006'