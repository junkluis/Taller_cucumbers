# language: es

Característica: Buscar películas por su rating

    @peliculasPorRating
    Escenario: Filtrar películas con ratings válidos
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1981     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dada el usuario ingresa un grupo de ratings: R, PG-13
        Cuando busque la películas por rating
        Entonces obtendrá 3 películas que coincidan
        Y los título de estas películas son
        | TITULO             |
        | Ant-Man (película) |
        | Halloween          |
        | Halloween II       |
        Y obtiene el siguiente mensaje 'Se encontraron 3 película(s).'

    @peliculasPorRating
    Escenario: Filtrar películas con ratings válidos y no válidos
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1981     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dada el usuario ingresa un grupo de ratings: R, PG-13, M
        Cuando busque la películas por rating
        Entonces obtendrá 3 películas que coincidan
        Y los título de estas películas son
        | TITULO             |
        | Ant-Man (película) |
        | Halloween          |
        | Halloween II       |
        Y obtiene el siguiente mensaje 'Se encontraron 3 película(s).'
        Y obtiene el siguiente error: 'Los ratings ['M'] no son una opción disponible para búsqueda.'

    @peliculasPorRating
    Escenario: Filtrar películas con ratings válidos, no se encuentran resultados
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1981     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dada el usuario ingresa un grupo de ratings: G
        Cuando busque la películas por rating
        Entonces obtendrá 0 películas que coincidan
        Y obtiene el siguiente mensaje 'No se encontró ninguna película disponible para esa audiencia.'

    