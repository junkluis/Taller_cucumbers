# language: es

Característica: Buscar películas por su rating

    @peliculasPorTítulo
    Escenario: Filtrar películas en rating 'R'
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dada el usuario ingresa el rating: 'R'
        Cuando busque la películas por rating
        Entonces obtendrá 2 películas que coincidan
        Y los título de estas películas son
        | TITULO        |
        | Halloween     |
        | Halloween II  |
        Y obtiene el siguiente mensaje 'Se encontraron 2 película(s).'


    @peliculasPorTítulo
    Escenario: Filtrar películas por rating 'PG-13'
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dada el usuario ingresa el rating: 'PG-13'
        Cuando busque la películas por rating
        Entonces obtendrá 1 películas que coincidan
        Y los título de estas películas son
        | TITULO             |
        | Ant-Man (película) |
        Y obtiene el siguiente mensaje 'Se encontraron 1 película(s).'


    @peliculasPorTítulo
    Escenario: Filtrar películas por rating 'NC-17'
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dada el usuario ingresa el rating: 'NC-17'
        Cuando busque la películas por rating
        Entonces obtendrá 1 películas que coincidan
        Y los título de estas películas son
        | TITULO          |
        | American Psycho |
        Y obtiene el siguiente mensaje 'Se encontraron 1 película(s).'


    @peliculasPorTítulo
    Escenario: Filtrar películas por rating, sin encontrar resultado
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | El rey león                | Jon Favreau      | Donald Glover, John Oliver, Seth Rogen           | aventura     | ingles, espanol          | 2019     | G         |
        | Toy Story 3                | Josh Cooley      | Tom Hanks, Tim Allen, Joan Cusack                | animada      | ingles, aleman           | 2010     | G         |
        | Buscando a Nemo            | Andrew Stanton   | Albert Brooks, Ellen DeGeneres, Alexander Gould  | animada      | ingles, aleman           | 2003     | PG        |
        Dada el usuario ingresa el rating: 'R'
        Cuando busque la películas por rating
        Entonces obtendrá 0 películas que coincidan
        Y obtiene el siguiente mensaje 'No se encontró ninguna película disponible para esa audiencia.'


    @peliculasPorTítulo
    Escenario: Filtrar películas por varios rating y uno de ellos no valido 'NC-17, PC-2'
        Dado un conjunto de películas
        | TITULO                     | DIRECTOR         | ELENCO                                           | GENERO       | IDIOMAS                  | ESTRENO  | RAITING   |
        | Ant-Man (película)         | Peyton Reed      | Paul Rudd, Evangeline Lilly, Corey Stoll         | superheroes  | ingles                   | 2015     | PG-13     |
        | Halloween                  | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1978     | R         |
        | Halloween II               | John Carpenter   | Donald Pleasence, Jamie Lee Curtis, P. J. Soles  | terror       | ingles, aleman, espanol  | 1081     | R         |
        | American Psycho            | Mary Harron      | Christian Bale, Willem Dafoe, Jared Leto         | terror       | aleman                   | 2000     | NC-17     |
        Dada el usuario ingresa el rating: 'NC-17, PC-2'
        Cuando busque la películas por rating
        Entonces obtendrá 1 películas que coincidan
        Y los título de estas películas son
        | TITULO          |          
        | American Psycho |
        Y obtiene el siguiente mensaje 'Se encontraron 1 película(s).'
        Y obtiene el mensaje de error 'Los ratings [PC-2] no son una opción disponible para búsqueda.'