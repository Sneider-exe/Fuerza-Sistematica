
### Codigo Unidad Central Procesamiento (CPU)

El codigo realizado en HDL para la Unidad Central de Procesamiento (CPU) de la computadora Hack. Esta CPU es responsable de analizar instrucciones binarias y ejecutarlas de acuerdo con la especificacion del lenguaje de maquina Hack. Maneja tanto instrucciones A como instrucciones C, gestionando el control del programa y el procesamiento de datos.

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

![image](https://github.com/user-attachments/assets/af17d3cd-0687-4bed-a103-b3fc0d7d5a20)


### Componentes Clave

- **Multiplexores (Mux16)**: Se utilizan para seleccionar entre diferentes fuentes de entrada segun las señales de control.
- **ALU**: Realiza calculos y operaciones logicas.
- **Registros (ARegister y DRegister)**: Almacenan valores intermedios, la direccion para el acceso a memoria y los resultados de los calculos de la ALU.
- **Logica de Saltos**: Determina el flujo de ejecucion segun el resultado de las operaciones (por ejemplo, resultados cero o negativos).

Este codigo muestra como opera una CPU simple al integrar varios componentes para manejar instrucciones, realizar calculos y gestionar la memoria

