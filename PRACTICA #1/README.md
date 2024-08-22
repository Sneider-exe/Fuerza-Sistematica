#  Instalando y reconociendo las principales características de Nand2Tetris
## Implementacion Compuertas Logicas en lenguaje HDL


Las compuertas lógicas son componentes fundamentales en la electrónica digital, utilizadas para realizar operaciones básicas de lógica booleana. Actúan como bloques de construcción para circuitos más complejos dentro de un computador. Cada compuerta realiza una función lógica específica, como AND, OR o NOT, que procesa señales binarias (0s y 1s) para realizar cálculos y tomar decisiones dentro del sistema. Estas operaciones permiten que los computadores ejecuten programas y manejen datos de manera eficiente.

Para esta segunda parte de la primera practica realizamos el proyecto 01 del curso Nand2Tetris en donde implementamos las principales y mas importantes compuertas logicas que son la base para el funcionamiento de un computador, en lenguaje HDL partiendo de la compuerta base una compuerta Nand, a partir de esta veremos como las diferentes combinaciones de esta compuerta llevaran a la construccion de todas las demas compuertas necesarias

### Compuerta NOT

Esta es la compuerta not, lo que hace principalmente esta compuerta es invertir su entrada
![image](https://github.com/user-attachments/assets/8eefc3f9-806d-4da0-91a6-ca552624d115)

La implementacion en el codigo esta realizada como se encuentra en el diagrama, a partir de una nand en donde las dos entradas de la nand seran las mismas y asi actuara como un inversor

![image](https://github.com/user-attachments/assets/de4ea7df-16c1-41c2-83ed-d16c84b5166e)

### Compuerta AND
Esta compuerta AND, lo que hace el revisar las dos entradas y su salida es 1 solamente si ambas entradas son 1
![image](https://github.com/user-attachments/assets/16f1a4dd-48fe-4b02-a682-50a59fd8305a)


La implementacion en el codigo esta realizada como se encuentra en el diagrama, lo hacemos a partir de una compuerta not que ya fue previamente implementada y una compuerta nand, basicamente tiene el mismo funcionamiento de la nand pero invertimos su salida con una not

![image](https://github.com/user-attachments/assets/7bb1dd6e-85c0-4d03-8746-0fc5613cdd6a)

### Compuerta OR
Esta compuerta or lo que principalmente hace es revisar si alguna de sus entradas tiene un 1, para de este modo mostrar como salida un uno, a continuacion se muestra su tabla de verdad con su respectivo simbolo

![image](https://github.com/user-attachments/assets/fade2622-14c4-4e35-b268-3a856c4a983f)


La implementacion en el codigo esta basada a partir de 3 compuertas nand interconectadas de la siguiente manera, de este modo a partir de esta combinacion se logra obtener una compuerta OR

![image](https://github.com/user-attachments/assets/cd53c1f6-1177-4b79-90e2-f2b85ddac092)

### Compuerta XOR
La siguiente compuerta llamada OR exclusiva o abreviado XOR funciona muy similar a la compuerta OR con la diferencia de que cuando sus dos entradas son 1, su salida sera 0 por tener sus dos entradas iguales, a continuacion la tabla de verdad y su respectivo simbolo

![image](https://github.com/user-attachments/assets/9392149e-e5b9-47a3-8215-ae3b4368cc34)


La implementacion en el codigo esta basada a partir de una compuerta or, una compuerta and y una compuerta nand interconectadas de la siguiente manera para funcionar correctamente como una compuerta XOR

![image](https://github.com/user-attachments/assets/8cac0f7b-8e7f-49c2-9fa9-8872bdcae13c)

### MULTIPLEXOR

El multiplexor de dos entradas selecciona entre dos señales de entrada usando un selector. Si el selector esta en 0, envia la primera entrada a la salida, si esta en 1, envia la segunda entrada. Es como un interruptor que elige cual de las dos señales usar.

![image](https://github.com/user-attachments/assets/dfa84607-4f4a-4577-8cd5-da16c1b030b2)


La implementacion en el codigo esta basada a partir de una compuerta not, una compuerta or y dos compuertas and, y estan interconectadas de la siguiente manera 

![image](https://github.com/user-attachments/assets/44765588-b17f-49bd-ba4e-7c9790b80775)

### DEMULTIPLEXOR

Un demultiplexor toma una señal de entrada y la envia a una de varias salidas, controlado por un señal de seleccion. Si se tiene una entrada y dos controles, el demultiplexor usa los controles para decidir a cual de las salidas enviar la entrada. Es como un distribuidor que envia la misma señal a uno de varios destinos.

![image](https://github.com/user-attachments/assets/6a07bcda-782f-4d63-b37e-e6a48bfe4d31)

La implementacion en el codigo esta basada a partir de una compuerta not, y dos compuertas and que realizando la siguiente combinacion logras generar un demultiplexor

![image](https://github.com/user-attachments/assets/f2dce5d6-c08c-47ad-a95f-42c6afbe9863)

### NOT16

Este chip funciona practicamente igual que la compuerta not, su diferencia esta en que no solamente toma 1 bit como entrada y produce 1 bit de salida, sino que obtiene 16 bits de entrada y 16 bits de salida, invirtiendo bit por bit 

![image](https://github.com/user-attachments/assets/fab75ce6-02da-498b-9bac-b314bcee814e)

Para la implementacion de esta compuerta utilizamos lenguaje de arreglos "[]" para indicar la posicion de cada bit y pasarlo por una compuerta not bit por bit

### AND16

Este chip funciona exactamente igual que las compuertas and, la diferencia es que tendra para este caso 32 bits de entrada y 16 bits de salida, el funcionamiento es toma de cada posicion el par de bits y los pasa por la compuerta and realizando la respectiva operacion par por par

![image](https://github.com/user-attachments/assets/b31081f2-6ec2-4874-bb02-0ee933ff4dcf)

### OR16

Esta compuerta funciona exactamente igual que las compuertas or, la diferencia es que tendra para este caso 32 bits de entrada y 16 bits de salida, el funcionamiento es toma de cada posicion el par de bits y los pasa por la compuerta or realizando la respectiva operacion par por par

![image](https://github.com/user-attachments/assets/1f0c45cb-d2cd-4e38-9871-325dc9bdeae7)

### MUX16

Este tipo de multiplexor al igual que el hermano menor de acuerdo a su selector producira la salida de entrada, aqui funciona exactamente igual pero tomando 32 bits como entrada 16 para cada entrada pero evaluandolos individualmente por pares, y utilizando el selector que se le asigne

![image](https://github.com/user-attachments/assets/e968124b-18da-4567-9998-e86de5768449)

### OR8WAY

Este chip funciona basicamente como una compuerta or solo que no tomando 2 entradas sino 8 entradas, a diferencia del OR16 este no evalua par por par si no que evalua todas sus entradas de manera paralela

![image](https://github.com/user-attachments/assets/9a6b57e8-5d11-44a9-bc95-a35fe52ca48c)


La implementacion en el codigo esta realizada de la siguiente manera en forma de cascada por lo que cada salida alimenta la entrada siguiente y asi sucesivamente hasta completar los 8 bits de entrada

![image](https://github.com/user-attachments/assets/3ca10249-cfeb-4aa6-ae88-6a3aee2ff7b1)

### Mux4Way16

Mux4Way16 es un multiplexor de 4 vías de 16 bits. Este componente digital selecciona una de entre cuatro entradas de 16 bits y la dirige a la salida. 4 entradas de 16 bits: Cada una de estas entradas puede proporcionar un dato de 16 bits. 2 entradas de selección (selectores): Estas se utilizan para seleccionar cuál de las 4 entradas será la salida del multiplexor. 1 salida de 16 bits: Esta es la línea de salida que lleva el valor de la entrada seleccionada.

![image](https://user-images.githubusercontent.com/91504420/222689584-8a9db23f-ccba-435e-b298-238c402a1965.png).

La tabla de verdad para un Mux4Way16 es la siguiente:

| S1 | S0 | Salida (Y)  |
|----|----|-------------|
| 0  | 0  | D0          |
| 0  | 1  | D1          |
| 1  | 0  | D2          |
| 1  | 1  | D3          |

### Mux8Way16

Mux8Way16 es un multiplexor de 8 vías de 16 bits, utilizado en diseño digital para seleccionar una de entre ocho entradas de 16 bits. 8 entradas de 16 bits: Cada una de estas entradas puede proporcionar un valor de 16 bits. 3 entradas de selección (selectores): Estas se utilizan para seleccionar cuál de las 8 entradas será la salida del multiplexor.3 entradas de selección (selectores): Estas se utilizan para seleccionar cuál de las 8 entradas será la salida del multiplexor.

![image](https://user-images.githubusercontent.com/91504420/222692666-b7d4c997-7ce1-4f39-bb33-4d5af16b6c7a.png)

Para un Mux8Way16, la tabla de verdad simplificada sería:

![image](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiMmpAq6P4LA9CplkFbOylTaNgg3_dRgKw0b7pxByToE05WZv_DDYoqB9j0QG4v9lrzRHizsGKh8dpKlkImlSq6s6bLz_Cf6Hs3eZeSznaNpqV-gdSdGHR86ropaK5D7q_a6EZfjdahvw/s1600/8way16bitMux.png)

### DMux4Way
El chip DMux4Way es un demultiplexor de 4 vías que distribuye una señal de entrada (in) hacia una de las cuatro salidas posibles (a, b, c y d), controlado por dos señales de selección (sel[0] y sel[1]). Para lograr esta distribución, el chip emplea dos instancias de un demultiplexor básico (DMux). Primero, la señal de entrada se divide en dos caminos (out1 y out2) según el valor de sel[1]. Luego, cada una de estas salidas se subdivide nuevamente a través de otro DMux, utilizando la señal sel[0], lo que finalmente dirige la señal de entrada a una de las cuatro salidas (a, b, c o d).

Para el DMux4Way, la tabla de verdad quedaria se la forma:

|out1|out2| Salidas     |
|----|----|-------------|
| 0  | 0  | a           |
| 0  | 1  | b           |
| 1  | 0  | c           |
| 1  | 1  | d           |

### DMux8Way
|out1|out2|out3| Salidas     |
|----|----|----|-------------|
| 0  | 0  | 0  | a           |
| 0  | 0  | 1  | b           |
| 0  | 1  | 0  | c           |
| 0  | 1  | 1  | d           |
| 1  | 0  | 0  | e           |
| 1  | 0  | 1  | f           |
| 1  | 1  | 0  | g           |
| 1  | 1  | 1  | h           |
El DMux8Way es un dispositivo que distribuye una única señal de entrada (in) hacia una de ocho posibles salidas (a, b, c, d, e, f, g, h) según el estado de tres señales de control (out1, out2 y out3). Para lograr este direccionamiento, el DMux8Way emplea una combinación de puertas lógicas y demultiplexores más pequeños. Inicialmente, la señal out1 es invertida mediante una puerta NOT, y luego se realiza una operación AND entre la señal de entrada y la señal invertida, lo que genera una señal llamada Salidas. Esta señal es la que determina a cuál de los dos demultiplexores de 4 vías (DMux4Way) se dirigirá la entrada, según los valores de out2 y out3.

Simultáneamente, la señal de entrada se combina con out1 a través de otra operación AND, produciendo una señal diferente, Salidas, que se utiliza para direccionar la entrada hacia el segundo demultiplexor de 4 vías, nuevamente en función de los valores de out2 y out3.

### ¿Que consideraciones importantes debe tener en cuenta para trabajar con Nand2Tetris?

Trabajar con Nand2Tetris requiere una comprensión integral de la jerarquía de sistemas computacionales, desde la lógica básica de puertas NAND hasta el diseño de un sistema operativo completo. Es crucial entender cómo cada nivel de diseño se construye sobre el anterior para poder integrar los componentes de manera efectiva. La lógica digital es la base de este proyecto, por lo que es fundamental tener un buen dominio de conceptos como puertas lógicas, flip-flops y registros para diseñar circuitos correctamente.

Seguir la documentación y las especificaciones del proyecto es otro aspecto vital. Estas especificaciones detallan los requisitos para cada componente y ayudan a evitar errores durante el diseño. Las pruebas exhaustivas son esenciales; es recomendable verificar cada componente de manera aislada antes de integrarlo con otros para identificar y corregir problemas. Además, la gestión del tiempo juega un papel importante. Dado que el proyecto es extenso y complejo, dividirlo en tareas más pequeñas y establecer plazos claros puede facilitar su realización sin contratiempos. Aprovechar las herramientas de simulación proporcionadas en el entorno Nand2Tetris también te permitirá visualizar y verificar el funcionamiento de tus circuitos antes de la implementación final. Finalmente, colaborar con compañeros y buscar ayuda en foros puede ser muy beneficioso para resolver problemas y compartir soluciones.

### ¿Qué otras herramientas similares a Nand2Tetris existen?

Existen varias herramientas que ofrecen funcionalidades similares a las de Nand2Tetris, proporcionando entornos para el diseño y simulación de circuitos digitales. Logisim es una de ellas, destacándose por su interfaz gráfica intuitiva que facilita el diseño y simulación de circuitos combinacionales y secuenciales. Esta herramienta permite a los usuarios experimentar con la lógica digital de manera visual, lo que puede ser muy útil para el aprendizaje y la verificación de circuitos.

Otra herramienta similar es Digital Works, que ofrece un entorno gráfico para el diseño y simulación de circuitos digitales. Al igual que Logisim, Digital Works permite a los usuarios trabajar con circuitos básicos y sistemas más complejos, brindando una forma práctica de explorar el diseño digital. Ambas herramientas proporcionan enfoques complementarios para el aprendizaje y la práctica de la lógica digital, y pueden ser utilizadas para profundizar en conceptos similares a los tratados en Nand2Tetris.

