# README

Importante: Disponible solo para un jugador (el último creado)

Lenguaje:

Ruby, version 2.5.3

Framework:

Rails, version  5.2.4.4

Gemas añadidas:

    Whenever
    Postgres

Api utilizada:

    https://openweathermap.org/api

Uso:

En caso de no haber usuarios creados, la app pedirá crear usuarios!

Una vez creado usuario, apretar en la viñeta Ruletas
Aquí se mostrarán todas las ruletas ejecutas

Importantes

- Los jugadores parten con una cantidad de $10.000 por defecto.
- En cada ronda los jugadores apuestan entre un 8% y 15% del total de dinero que poseen. Si tienen $1.000 o menos, van All In. Si no les queda dinero, no apuestan.
- La apuesta puede variar dependiendo del clima de Santiago de Chile, por lo que se debe consultar alguna API, y en caso de que esté pronosticado una temperatura superior a 32ºC dentro de los próximos 7 días, las apuestas son más conservadoras y cambian a un valor aleatorio entre 3% y 7%.
- El modo de apuesta es el siguiente: un jugador puede apostar a Verde, Rojo o Negro con un 2%, 49% y 49% de probabilidad respectivamente.
- Un jugador recupera el doble de lo apostado si acierta su apuesta, cuando ésta sea Rojo o Negro, y recupera 15 veces lo apostado en caso de acertar Verde. En caso de perder la apuesta, no recupera nada.
- La ruleta entrega resultados con la misma probabilidad que los jugadores hacen apuestas, es decir, Verde 2%, Rojo 49% y Negro 49%.

Sobre el requerimiento:
Desarrollar una aplicación Ruby on Rails en su última versión.
    ok
Deben existir vistas que permitan ingresar jugadores, a los cuales se les pueden modificar sus datos y cantidad de dinero que poseen.
    ok
Los jugadores parten con una cantidad de $10.000 por defecto.
    ok
Los jugadores participan de una partida de ruleta automáticamente, cada 3 minutos.
    * tarea creada como rake roulette:roll, no automática en heroku dado que me pedía una tarjeta de crédito
En cada ronda los jugadores apuestan entre un 8% y 15% del total de dinero que poseen. Si tienen $1.000 o menos, van All In. Si no les queda dinero, no apuestan.
    ok
La apuesta puede variar dependiendo del clima de Santiago de Chile, por lo que se debe consultar alguna API, y en caso de que esté pronosticado una temperatura superior a 32ºC dentro de los próximos 7 días, las apuestas son más conservadoras y cambian a un valor aleatorio entre 3% y 7%.
    ok, https://openweathermap.org/api
El modo de apuesta es el siguiente: un jugador puede apostar a Verde, Rojo o Negro con un 2%, 49% y 49% de probabilidad respectivamente.
    ok
Un jugador recupera el doble de lo apostado si acierta su apuesta, cuando ésta sea Rojo o Negro, y recupera 15 veces lo apostado en caso de acertar Verde. En caso de perder la apuesta, no recupera nada.
    ok
La ruleta entrega resultados con la misma probabilidad que los jugadores hacen apuestas, es decir, Verde 2%, Rojo 49% y Negro 49%.
    ok
Al final del día, todos los jugadores reciben $10.000.
    * tarea creada como rake roulette:give_money, no automática en heroku dado que me pedía una tarjeta de crédito
Debe existir una vista donde se muestren todas las rondas transcurridas, con la apuesta de cada jugador y el resultado de la ruleta
    ok