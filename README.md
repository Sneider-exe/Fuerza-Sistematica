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

### Multiplexor

El multiplexor de dos entradas selecciona entre dos señales de entrada usando un selector. Si el selector esta en 0, envia la primera entrada a la salida, si esta en 1, envia la segunda entrada. Es como un interruptor que elige cual de las dos señales usar.

![image](https://github.com/user-attachments/assets/dfa84607-4f4a-4577-8cd5-da16c1b030b2)


La implementacion en el codigo esta basada a partir de una compuerta not, una compuerta or y dos compuertas and, y estan interconectadas de la siguiente manera 

![image](https://github.com/user-attachments/assets/44765588-b17f-49bd-ba4e-7c9790b80775)



