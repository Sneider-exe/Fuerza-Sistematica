# EXPLICACIÓN LÓGICA EMPLEADA PARA LA CREACIÓN DE LOS CHIPS
## Memory
Para la realización de este chip se emplearon diversos componentes:
- **Entradas:**
  - `in[16]`: Recibiamos una entrada de 16 bits.
  - `load`: Es una flag que nos indica si la entrada debe ser registrada en la memoria o no.
  - `address[16]`: Este vector nos indica la dirección hacía donde debe dirigirse la entrada, cada cierta cantidad de bits nos indicará que actividad se debe realizar.

- **Salidas:**
  - `outM[16]`: El valor que se escribira en la memoria.
### Funcionalidad
 Se utilizó una DMux4way, utilizando como selecciondor los bits 14 y 15 de la dirección address,, en donde los valores de las salidas a y b se conectan con el load del RAM16K.
 Las otras dos opciones nos iban a dirigir al Screen y el último wire de sálida no se conecta con ningún otro elemento.
 Tanto la ram como el screen usaban el resto de la dirección address para colocar la entrada in.
 Finalmente, volvíamos a tomar los mismos bits que en el Mux para definir realmente que sálida ibamos a tener, si se mostraba lo que se guardo en ram o lo que se muestra en pantalla, o el estado del teclado keyboard.

## Unidad Central Procesamiento (CPU)

El código realizado en HDL para la Unidad Central de Procesamiento (CPU) de la computadora Hack. Esta CPU es responsable de analizar instrucciones binarias y ejecutarlas de acuerdo con la especificacion del lenguaje de maquina Hack. Maneja tanto instrucciones A como instrucciones C, gestionando el control del programa y el procesamiento de datos.

### Entradas y Salidas

- **Entradas:**
  - `inM[16]`: El valor de la memoria (M), especificamente el contenido de la RAM en la direccion A.
  - `instruction[16]`: La instruccion que se va a ejecutar.
  - `reset`: Una señal de control que indica si reiniciar el programa actual (`reset == 1`) o continuar ejecutandolo (`reset == 0`).

- **Salidas:**
  - `outM[16]`: El valor que se escribira en la memoria (M).
  - `writeM`: Una señal de control que indica si se debe escribir un valor en la memoria.
  - `addressM[15]`: La direccion en la memoria de datos.
  - `pc[15]`: La direccion de la proxima instruccion que se ejecutara.

### Funcionalidad

La CPU realiza las siguientes funciones:

1. **Analisis de Instrucciones**: Decodifica la instruccion entrante para determinar la operacion a realizar, incluyendo si es una operacion de calculo, acceso a memoria o salto.

2. **Unidad Aritmetico-Logica (ALU)**: La ALU procesa operaciones aritmeticas y logicas segun las especificaciones de la instruccion.

3. **Gestion del Contador de Programa (PC)**: El PC es responsable de mantener un seguimiento de la direccion de la proxima instruccion. Puede ser reiniciado o incrementado segun el flujo de ejecucion (por ejemplo, saltos).

4. **Operaciones de Memoria**: Dependiendo del tipo de instruccion, lee de o escribe en la memoria. La CPU utiliza multiplexores (Mux16) para gestionar la seleccion de entradas para la ALU y los registros.

5. **Señales de Control**: Genera señales de control para gestionar el flujo de datos entre diferentes componentes, como la ALU, los registros y la memoria.

![image](https://github.com/user-attachments/assets/5392567b-4790-4324-abcd-3119d0a47ee7)

## COMPUTER 

El computer es la pieza que encapsula la ROM32K, la CPU y la memoria, juntandolas para que trabajen en conjunto como una unidad. El ROM32K(Read-Only-Memory), que como su nombre indica cumple la función de leer la memoria para definir que instrucción es la siguiente. Ya viene hecho en NAND2TETRIS.

El ROM32K necesita saber con quien comunicarse(address) y como ya se dijo anteriormente, la instrucción que debe seguir, de ahí se genero está linea:

    ROM32K(address=pc, out=instruction);
Ahora tenemos una instrucción que debemos seguir de la cual se encargara nuestra CPU. La instrucción debe ser la instrucción del out del ROM32K, necesita la señal del reset, una entrada y salida de memoria, la dirección de memoria donde se leen y escriben los datos, una señal que le indique si se deben escribir datos en memoria.

    CPU(inM=mData, instruction=instruction, reset=reset, outM=outM, writeM=writeM, addressM=addressM, pc=pc);
Finalmente ahora tenemos que trabajar con la parte de la memoria, para esto llamamos a Memory y se le pasa como entrada el outM que son los datos leídos de la memoria, el load para indicar si debe cargar datos en la memoria, la address definida en CPU y el out que es la dirección de memoria del dato.

    Memory(in=outM, load=writeM, address=addressM, out=mData);



### Componentes Clave

- **Multiplexores (Mux16)**: Se utilizan para seleccionar entre diferentes fuentes de entrada segun las señales de control.
- **ALU**: Realiza calculos y operaciones logicas.
- **Registros (ARegister y DRegister)**: Almacenan valores intermedios, la direccion para el acceso a memoria y los resultados de los calculos de la ALU.
- **Logica de Saltos**: Determina el flujo de ejecucion segun el resultado de las operaciones (por ejemplo, resultados cero o negativos).

Este codigo muestra como opera una CPU simple al integrar varios componentes para manejar instrucciones, realizar calculos y gestionar la memoria

