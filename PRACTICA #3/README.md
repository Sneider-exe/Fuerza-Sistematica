#EXPLICACIÓN LÓGICA EMPLEADA PARA LA CREACIÓN DE LOS CHIPS

## BIT:
Como tenemos una variable de control que nos indica que debe suceder si ocurre cierta condición, eso nos indica el uso de un Mux, en donde si el load está activado, carga la nueva entrada, sino mantiene la entrada que fue lanzada del Fip Flop. Usamos la compuerta DFF, que es una compuerta por defecto en Nand2tetris, que cumple la función de los Flip Flop, responde a la señal emitida por el Mux y guarda la entrada que este reciba.
## REGISTER:
Aplicamos la lógica anterior para cada bit de la entrada de 16 bits.
## PC:
Como tenemos diferentes condiciones, haremos uso de distintas Mux, y el chip Inc16 que hicimos con anterioridad.Primero miramos si el selector de incrementar se encuentra activo y lo pasamos por un Mux, en donde se determinará si debe preservar la salida del registro o por el contrario, seguiremos trabajando con la salida arrojada por el registro, aplicamos la misma lógica con la condición con la condición del "Load" y finalmente miramos si la condición de registro está activa para borrar el registro, osino arrojar la salida.  


