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


