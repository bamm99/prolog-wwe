# prolog-wwe
ejemplo de ejercicio de prolog (inteligencia artificial 2022-2)

# enunciado 
## Logica Proposicional: WWE Supercard
WWE Supercard es un videojuego de cartas coleccionables basado en luchadores de WWE. Fue desarrollado
por Cat Daddy Games, y publicado por 2K Games. Fue lanzado el 14 de agosto de 2014, para plataformas
Android y iOS.
## Cartas
Cada carta esta compuesta de los siguientes elementos:
Nombre del luchador (y su correspondiente foto).
Categorıa o Rareza de la carta (Se puede notar por el fondo distinto de cada carta).
Maniobra caracterıstica del luchador.
Nivel actual de la carta (En la parte inferior de la carta).
Flecha de Compatibilidad (La que puede ser azul (Izquierda o Derecha) o amarilla (Arriba o Abajo)).


## Estadısticas:

• Potencia (POW).
• Resistencia (TGH).
• Velocidad (SPD).
• Carisma (CHA).

## Mejorando cartas

## Categorıas
En primer lugar, hay que considerar que dependiendo la categorıa de una carta mejores estadısticas va a tener.

Por ejemplo:

Para unificar consideraremos:
Las estadısticas de una carta en cierta categorıa seran iguales al 115 % de la
misma estadıstica en la categorıa inmediatamente anterior.
Al ano 2020, las categorıas del juego (con sus correspondientes niveles m´aximos) en orden creciente eran:
1. Bestia (Beast): 60 niveles.
2. Monstruo (Monster): 65 niveles.
3. Tit´an (Titan): 70 niveles.
4. Wrestlemania 34: 75 niveles.
5. Goliat (Goliath): 75 niveles.
6. Summerslam 2018: 75 niveles.
7. Gotica (Gothic): 75 niveles.
8. Ne´on (Neon): 75 niveles.
9. Rota (Shattered): 75 niveles.
10. Wrestlemania 35: 80 niveles.
11. Cataclismo (Cataclysm): 80 niveles.
12. Summerslam 2019: 80 niveles.
13. Pesadilla (Nightmare): 100 niveles.
14. Primitiva (Primal): 100 niveles.
15. Vanguardia (Vanguard): 100 niveles.
16. Royal Rumble: 100 niveles.
17. Wrestlemania 36: 100 niveles.
18. Elemental: 100 niveles.

Por ejemplo: Si John Cena en la Categorıa Bestia y Nivel 0 tiene Potencia = 11.634. Entonces, John Cena en
la Categor´ıa Goliat y Nivel 0 tendr´a Potencia = 20.348.

John Cena, Categor´ıa Monstruo, Nivel 0, Potencia = 11.634 * 1,15 = 13.379.
John Cena, Categor´ıa Tit´an, Nivel 0, Potencia = 13.379 * 1,15 = 15.386.
John Cena, Categor´ıa Wrestlemania 34, Nivel 0, Potencia = 15.386 * 1,15 = 17.694.
John Cena, Categor´ıa Goliat, Nivel 0, Potencia = 17.694 * 1,15 = 20.348.

## Niveles
Otra forma de mejorar nuestras cartas es incrementar los niveles de nuestras cartas dandole puntos de experiencia.
Las estadısticas de una carta aumentaran un 5 % (con respecto a la estad´ıstica
en la categorıa en nivel 0) por cada nivel.
Por ejemplo: Si John Cena en la Categor´ıa Bestia y Nivel 0 tiene Potencia = 11.634. Entonces, John Cena en
la Categorıa Goliat y Nivel 30 tendr´a Potencia = 50.858.
John Cena, Categor´ıa Goliat, Nivel 0, Potencia = 20.348.
El 5 % de 20.348 = 1.017.
John Cena, Categor´ıa Goliat, Nivel 30, Potencia = 20.348 + (30 * 1.017) = 50.858.

## Modos de juego
### Enfrentamiento Carta a Carta
Primero, hay que entender como funciona el enfrentamiento carta a carta. Dependiendo el modo de juego, tanto
el jugador como el rival escoger´an una carta de su mano.

VS

Luego el sistema escogera 1 o 2 estadısticas al azar. La carta que tenga el mayor valor en la estadıstica (o en la
suma de la estadıstica, en el caso de que sean 2) gana la batalla.

### Por ejemplo:
Ganarıa AJ Styles si la batalla fuera:
Solo Velocidad.
Solo Carisma.
Potencia + Velocidad.
Potencia + Carisma.
Resistencia + Velocidad.
Velocidad + Carisma.
Ganarıa Brock Lesnar si la batalla fuera:
Solo Potencia.
Solo Resistencia.
Potencia + Resistencia.
Resistencia + Carisma.
Como no es facil controlar la aleatoriedad propia del juego, para nuestro sistema consideraremos la siguiente

### regla:

Una carta vencera a otra si para MAS DEL 50 % de las posibles asignaciones
resulta vencedora.
De acuerdo, a esta regla (AJ Styles, Categorıa: Wrestlemania 34, Nivel: 0) vence a (Brock Lesnar, Categorıa:
Wrestlemania 34, Nivel: 0). Observacion: Si una carta A no vence a una carta B, no necesariamente la carta B
vence a la carta A.
### enfrentamiento Duo vs Duo
Esta modalidad funciona exactamente al Enfrentamiento 1 vs 1, pero con la diferencia de que se enfrentan dos
cartas vs dos cartas. La estad´ıstica del equipo sera la suma de las estadısticas de ambos miembros.

### Por ejemplo:
VS
4
En este caso:
Modalidad Orton/Lesnar Cena/Guerrero
Solo Potencia 29.370 29.173
Solo Resistencia 29.014 28.725
Solo Velocidad 29.105 29.031
Solo Carisma 28.539 29.475
Potencia + Resistencia 58.384 57.898
Potencia + Velocidad 58.475 58.204
Potencia + Carisma 57.909 58.648
Resistencia + Velocidad 58.119 57.756
Resistencia + Carisma 57.553 58.200
Velocidad + Carisma 57.644 58.506
El equipo A vence al equipo B.

### Se pide
1. Construir en PROLOG una base de conocimiento con al menos 30 cartas, en la categorıa mas baja y en
nivel 0.
No es necesario crear hechos para cartas de mejor nivel o de categorıa superiores. Sus estadısticas
deben ser calculadas de acuerdo a las instrucciones entregadas.
Tampoco es necesario que el dominio de las cartas que creen sea especıficamente Lucha Libre.
2. Definir las reglas necesarias para definir si una carta es capaz de vencer a otra en Enfrentamiento uno a
uno.
3. Definir las reglas necesarias para definir si dos cartas son capaces de vencer a otras dos en Enfrentamiento
d´uo a d´uo.
4. Consideren que si se ingresa una carta de nivel mayor a su categorıa (Ejemplo: Una carta Bestia de nivel
150), el sistema automaticamente considere que la carta es del m´aximo nivel de la categorıa.

