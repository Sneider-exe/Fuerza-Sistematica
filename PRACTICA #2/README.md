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


### 16-Bit Adder

Un sumador de 16 bits basado en sumadores completos se encarga de sumar dos números binarios de 16 bits, procesándolos bit a bit. Cada número binario se compone de 16 dígitos, y el sumador utiliza un sumador completo (full adder) para cada par de bits. El proceso comienza en el bit menos significativo (bit 0) de ambos números, donde el sumador completo toma los bits de entrada A y B, más un posible acarreo inicial (generalmente 0), y calcula dos salidas: un bit de Suma y un Acarreo.

El bit de Suma es parte del resultado final en esa posición, mientras que el bit de Acarreo se transfiere al siguiente sumador completo, que sumará el siguiente par de bits (en la posición 1) junto con el acarreo recibido. Este proceso se repite hasta que los 16 bits han sido sumados. En la posición final (bit 15), el sumador completo produce un bit de suma para el bit más significativo y un acarreo final que puede ser utilizado para futuras operaciones si es necesario. El sumador de 16 bits divide la suma en una cadena de sumadores completos, donde cada uno gestiona la suma de un bit y transfiere el acarreo a la siguiente posición, garantizando una suma correcta de los 16 bits.

- **Implementacion del 16Bit Adder**

![image](https://github.com/user-attachments/assets/e04d8e95-a5a9-4239-a602-5c4e2e781300)

### 16-Bit Incrementer

Este circuito lo que hara es que la entrada que se ingrese, la cual sera un numero de 16 bits, se le suma 1 (un bit) por lo que su implementacion es bastante sencilla ya que se usa un 
sumador completo de 16 bits, en donde su primera entrada sera la misma entrada del incrementador, y la segunda entrada sera el numero 1 en formato de 16 bits

### Arithmetic Logic Unit (ALU)

La ALU (Unidad Aritmético-Lógica) es un componente fundamental en las computadoras. Su función principal es realizar operaciones aritméticas y lógicas sobre datos binarios.
La ALU toma dos entradas (llamadas operandos), realiza la operación seleccionada y produce un resultado. Además, puede generar señales adicionales, como el acarreo o los indicadores de resultado (por ejemplo, si la operación resultó en cero o en un valor negativo).

**Funciones de la ALU**

- Operaciones aritmeticas
  
 - ***Suma***: Calcula la suma de dos numeros binarios
 - ***Resta***: Calcula la resta de dos numeros binarios (para este caso se usa el complemento a 2)
 - ***Multiplicacion y division***: Para este caso no se tendra multiplicacion ni division en la ALU implementada pero existen ALUs que si la tienen
   
- Operaciones Lógicas

  - ***AND***: Realiza la operacion AND entre dos operandos
  - ***OR***: Realiza la operacion OR entre dos operandos
  - ***XOR***: Realiza una operacion XOR entre dos operandos
  - ***NOT***: Realiza una operacion NOT inviritiendo la entrada de los operandos
    
 - Operaciones como desplazamiento (shift) desplazando los bits de un operando hacia la izquierda o derecha
 - Comparacion: Comparando dos operandos para ver si son iguales

**Como funciona la ALU**
1. Entradas: La ALU recibe dos operandos binarios de entrada. Estos operandos son los datos sobre los que se realizarán las operaciones.
2. Seleccion de operacion: Un conjunto de señales de control selecciona qué operación debe realizar la ALU. Estas señales determinan si la ALU realizará una suma, resta, operación lógica, etc.
3. Ejecutar la operacion: Basado en las señales de control, la ALU utiliza circuitos internos para realizar la operación aritmética o lógica correspondiente. Por ejemplo, para una suma, la ALU utiliza sumadores completos; para una operación lógica AND, utiliza compuertas AND.
4. La ALU produce un resultado binario basado en la operación realizada. Además, puede generar señales adicionales como:
  - Acarreo: Indica si hubo un desbordamiento en operaciones aritméticas.
  - Cero: Indica si el resultado es cero.
  - Signo: Indica el signo del resultado (en sistemas que utilizan representación de complemento a dos).

