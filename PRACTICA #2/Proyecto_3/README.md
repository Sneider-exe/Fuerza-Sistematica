# EXPLICACIÓN LÓGICA EMPLEADA PARA LA CREACIÓN DE LOS CHIPS

## BIT:
Como tenemos una variable de control que nos indica que debe suceder si ocurre cierta condición, eso nos indica el uso de un Mux, en donde si el load está activado, carga la nueva entrada, sino mantiene la entrada que fue lanzada del Fip Flop. Usamos la compuerta DFF, que es una compuerta por defecto en Nand2tetris, que cumple la función de los Flip Flop, responde a la señal emitida por el Mux y guarda la entrada que este reciba.
## REGISTER:
Aplicamos la lógica anterior para cada bit de la entrada de 16 bits.
## PC:
Como tenemos diferentes condiciones, haremos uso de distintas Mux, y el chip Inc16 que hicimos con anterioridad.Primero miramos si el selector de incrementar se encuentra activo y lo pasamos por un Mux, en donde se determinará si debe preservar la salida del registro o por el contrario, seguiremos trabajando con la salida arrojada por el registro, aplicamos la misma lógica con la condición con la condición del "Load" y finalmente miramos si la condición de registro está activa para borrar el registro, osino arrojar la salida.  

![image](https://github.com/user-attachments/assets/cae81131-9023-4c5d-b7f5-1fe7b0880666)


## RAM4K
La RAM4K es un tipo de memoria de acceso aleatorio (RAM) utilizada en sistemas digitales como una memoria intermedia que puede almacenar datos y permitir un acceso rápido a ellos. La RAM4K se refiere a una memoria con capacidad de 4096 palabras, donde cada palabra puede tener una longitud predefinida, por ejemplo, de 16 bits. Está organizada en 12 bits de dirección, lo que significa que puede acceder a 2^12 = 4096 ubicaciones de memoria diferentes. Es una unidad fundamental para almacenar información temporalmente durante la ejecución de programas o procesos en un sistema digital.

La RAM4K está compuesta por varios bloques más pequeños de memoria, organizados en una jerarquía de módulos. Cada palabra en la RAM puede ser leída o escrita dependiendo de las instrucciones proporcionadas por el procesador o el controlador. Dirección: Cada ubicación en la RAM está etiquetada con una dirección única de 12 bits. Esto permite seleccionar una palabra específica dentro de las 4096 disponibles. Datos de Entrada: En cada ciclo de reloj, la RAM puede recibir un conjunto de datos de entrada. Estos datos serán almacenados en la ubicación de memoria especificada si la señal de escritura está activada. Datos de Salida: Si la operación es de lectura, el contenido de la dirección especificada se envía a la salida. Señales de Control: Write Enable (WE): Si esta señal está activada, la RAM escribirá los datos proporcionados en la dirección especificada.
Address: Especifica la ubicación de la memoria a la que se desea acceder, ya sea para leer o escribir.
Input (In): Contiene los datos que serán escritos en la memoria si la señal de escritura está activada.
Output (Out): Contiene los datos leídos de la ubicación de memoria especificada.

![image](https://github.com/user-attachments/assets/fc816f28-9d25-488d-80fd-adfd74219b12)

## RAM16K
La RAM16K es una memoria de acceso aleatorio (RAM) que puede almacenar 16,384 palabras. Está organizada en 14 bits de dirección, lo que significa que puede acceder a 2^14 = 16,384 ubicaciones de memoria diferentes. Es una versión ampliada de la RAM4K, ofreciendo una mayor capacidad de almacenamiento, ideal para sistemas que requieren más espacio para datos temporales. Dirección: Cada ubicación en la RAM16K está identificada por una dirección única de 14 bits, permitiendo acceso a 16,384 posiciones de memoria diferentes. Datos de Entrada: Cada ciclo de reloj permite que se ingresen datos en la memoria. Si la señal de escritura está activa, los datos se almacenarán en la ubicación de memoria seleccionada. Datos de Salida: Si la operación es de lectura, el valor almacenado en la dirección especificada será enviado como salida. Señales de Control: Write Enable (WE): Controla si los datos deben ser escritos en la memoria. Si está activa (1), los datos de entrada se almacenan en la ubicación seleccionada. Address: Especifica la ubicación de memoria (14 bits) donde se almacenarán o leerán los datos. Input (In): Los datos que serán almacenados en la RAM si se permite la escritura. Output (Out): Los datos que se leen de la ubicación de memoria seleccionada.

![image](https://github.com/user-attachments/assets/20b965e6-f150-49ea-89ca-0b78dc802480)


