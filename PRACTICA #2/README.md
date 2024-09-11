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

### Full Adder Circuit

El sumador simple (half adder) se utiliza para sumar solo dos números. Para superar esta limitación, se desarrolló el sumador completo (full adder). El sumador completo se utiliza para sumar tres números binarios de 1 bit: A, B y el acarreo C. El sumador completo tiene tres entradas y dos salidas, es decir, suma y acarreo.

- **Tabla de verdad Full Adder**

![image](https://github.com/user-attachments/assets/c7adffc4-9f09-48bc-a4b5-897737b1d457)

- **Implementacion Full Adder y Diagrama**

![image](https://github.com/user-attachments/assets/9a1b611d-b6ea-4594-b631-35890d4a1b1a)

En este circuito, se combinan dos circuitos sumadores simples (half adder) utilizando una compuerta OR. El primer sumador simple tiene dos entradas binarias de un solo bit, A y B. Como sabemos, el sumador simple genera dos salidas: Suma y Acarreo. La salida 'Suma' del primer sumador será la primera entrada del segundo sumador simple, y la salida 'Acarreo' del primer sumador será la segunda entrada del segundo sumador simple. El segundo sumador simple generará nuevamente 'Suma' y 'Acarreo'. El resultado final del circuito sumador completo (full adder) será el bit de 'Suma'. Para obtener la salida final del 'Acarreo', conectamos las salidas de 'Acarreo' del primer y del segundo sumador a una compuerta OR. El resultado de la compuerta OR será el acarreo final del circuito sumador completo.

El MSB (bit más significativo) está representado por el bit final de 'Acarreo'




