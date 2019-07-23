# language: es

Característica: Buscar películas por su rating

    @peliculasPorRating
    Escenario: Filtrar películas que tengan Rating 'R,NC-17'
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dada el usuario ingresa los ratings: 'R,NC-17'
        Cuando busque la películas por ratings
        Entonces obtendrá 3 películas que coincidan
        Y los título de estas películas son
        | TITULO          |
        | Halloween       |
        | Halloween II    |
        | American Psycho |
        Y obtiene el siguiente mensaje 'Se encontraron 3 película(s).'
    
    @peliculasPorRating
    Escenario: Filtrar películas que tengan Rating no permintidos 'C, T5'
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dada el usuario ingresa los ratings: 'C, T5'
        Cuando busque la películas por ratings
        Entonces obtendrá 0 películas que coincidan
        Y obtiene el siguiente mensaje 'No se encontró ninguna película disponible para esa audiencia.'
        Y obtiene el siguiente error 'Los ratings ['C', ' T5'] no son una opción disponible para búsqueda.'

    @peliculasPorRating
    Escenario: Filtrar películas que tengan Ratings 'G,PG' pero no se encuentran resultados
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dada el usuario ingresa los ratings: 'G,PG'
        Cuando busque la películas por ratings
        Entonces obtendrá 0 películas que coincidan
        Y obtiene el siguiente mensaje 'No se encontró ninguna película disponible para esa audiencia.'
