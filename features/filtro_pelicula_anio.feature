# language: es

Característica: Buscar películas por su año de estreno

    @peliculasPorAñoDeEstreno
    Escenario: Filtrar películas que fueron estrenadas entre el año 2000 y el año 2019
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dada el usuario ingresa un rango de año: (2000, 2019)
        Cuando busque la películas por año de estreno
        Entonces obtendrá 2 películas que coincidan
        Y los título de estas películas son
        | TITULO             |
        | Ant-Man (película) |
        | American Psycho    |
        Y obtiene el siguiente mensaje 'Se encontraron 2 película(s).'

    @peliculasPorAñoDeEstreno
    Escenario: Filtrar películas por año de estreno, donde el año inicial es mayor al año final
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dada el usuario ingresa un rango de año: (2021, 2019)
        Cuando busque la películas por año de estreno
        Entonces obtendrá 0 películas que coincidan
        Y obtiene el siguiente mensaje 'El año inicial no puede ser mayor que el año final de búsqueda.'

    @peliculasPorAñoDeEstreno
    Escenario: Filtrar películas por año de estreno, sin encontrar resultado
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dada el usuario ingresa un rango de año: (2016, 2019)
        Cuando busque la películas por año de estreno
        Entonces obtendrá 0 películas que coincidan
        Y obtiene el siguiente mensaje 'Ninguna pelicula fue estrenada durante los año 2016 y 2019'
