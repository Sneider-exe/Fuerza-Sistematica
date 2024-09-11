# Construyendo y entendiendo la Unidad Logica Aritmetica (ALU)

## Explicacion codigo para la creacion de los circuitos

### Half Adder Circuit

Un sumador simple (half adder) es un circuito de lógica digital que realiza la suma binaria de dos números binarios de un solo bit. Tiene dos entradas, A y B, y dos salidas, 
SUMA (SUM) y ACARREO (CARRY). La salida SUMA es el bit menos significativo (LSB) del resultado, mientras que la salida ACARREO es el bit más significativo (MSB) del resultado, 
lo que indica si hubo un acarreo durante la suma de las dos entradas. El sumador simple se puede implementar utilizando compuertas básicas como las compuertas XOR y AND.

La salida SUMA es el bit menos significativo (LSB) del resultado, que es el resultado de la operación XOR entre las dos entradas A y B.
La compuerta XOR implementa la operación de suma para dígitos binarios, donde se genera un “1” en la salida SUMA solo cuando una de las entradas es “1”.

La salida ACARREO es el bit más significativo (MSB) del resultado, lo que indica si hubo un acarreo durante la suma de las dos entradas.
La salida ACARREO es el resultado de la operación AND entre las dos entradas A y B. La compuerta AND genera un “1” en la salida ACARREO solo cuando ambas entradas son “1”.

- **Tabla de verdad Half Adder**

  ![image](https://github.com/user-attachments/assets/34bb882b-d637-4dff-991d-fe7964fa91bc)

- **Implentacion Half Adder y Diagrama**
 
  ![image](https://github.com/user-attachments/assets/47c16b4e-0daf-4b47-b708-53e558a6e8ca)

### 

