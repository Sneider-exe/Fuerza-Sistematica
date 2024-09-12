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

##**Implementacion de la ALU**

![image](https://github.com/user-attachments/assets/327f3ed7-e49e-4e6b-b6b7-5d6d221b4d22)


Esta ALU (Unidad Aritmética Lógica) realiza varias operaciones sobre dos entradas de 16 bits, x y y, dependiendo de un conjunto de señales de control (zx, nx, zy, ny, f, y no). Las operaciones pueden ser lógicas (como AND, NOT) o aritméticas (como suma, resta). Además, se calculan dos banderas (zr y ng) para indicar si el resultado es cero o negativo.

1. **Selección de la entrada x y y**

- **zx y zy**: Si estas señales son 1, la entrada correspondiente se fuerza a 0. Esto se implementa con multiplexores (Mux16) donde se selecciona si se usa x o y, o si se reemplazan por 0.
- **nx y ny**: Si estas señales son 1, se niega el valor de x o y. La negación se realiza bit a bit usando el componente Not16 para invertir los bits. Luego, el resultado pasa por otro multiplexor para decidir si se debe tomar el valor negado o no.

``` hdl
Mux16(a=x, b=false, sel=zx, out=xMultiOut); // zx: Si zx=1, x=0
Mux16(a=y, b=false, sel=zy, out=yMultiOut); // zy: Si zy=1, y=0
Not16(in=xMultiOut, out=negX);              // negación bit a bit de x
Mux16(a=xMultiOut, b=negX, sel=nx, out=procX); // selecciona si tomar x o !x
Not16(in=yMultiOut, out=negY);              // negación bit a bit de y
Mux16(a=yMultiOut, b=negY, sel=ny, out=procY); // selecciona si tomar y o !y
```

2. **Operaciones Aritméticas y Lógicas**

- **f**: Si f = 1, la ALU realiza una suma de x e y utilizando una operación de suma en complemento a dos (Add16). Si f = 0, realiza una operación AND bit a bit entre x e y (And16). El resultado de estas operaciones se selecciona mediante otro multiplexor (Mux16).

``` hdl
And16(a=procX, b=procY, out=andOut);       // Operación AND entre x e y
Add16(a=procX, b=procY, out=addOut);       // Operación de suma entre x e y
Mux16(a=andOut, b=addOut, sel=f, out=fOut); // Selección de AND o ADD basado en f
```

3. **Negación del Resultado**

- **no**: Si esta señal es 1, se niega el resultado final de la operación seleccionada (es decir, se aplica una negación bit a bit al resultado). Esto se hace con un Not16, y luego el multiplexor selecciona si devolver el valor original o su negación.

``` hdl
Not16(in=fOut, out=fNotOut); // Se niega el resultado de la operación
Mux16(a=fOut, b=fNotOut, sel=no, out=out); // Selección entre el valor y su negación
```

4. **Cálculo de las banderas zr y ng**

- **zr (zero flag)**: Si el resultado final es 0, la bandera zr se establece en 1. Esto se hace mediante una serie de operaciones OR (Or8Way y Or) que verifican si alguno de los bits del resultado es 1. Si todos los bits son 0, entonces zr se establece en 1.
- **ng (negative flag)**: Esta bandera se establece si el bit más significativo del resultado (el bit 15 en un número de 16 bits) es 1, lo que indica un número negativo en complemento a dos.

``` hdl
Or8Way(in=zr0, out=or1Out);   // Verifica si los primeros 8 bits son 0
Or8Way(in=zr1, out=or2Out);   // Verifica si los últimos 8 bits son 0
Or(a=or1Out, b=or2Out, out=or3Out); // Combina ambas comprobaciones
Not(in=or3Out, out=zr);       // Si el resultado es 0, entonces zr = 1
```

**Flujo de ALU**

a) El valor de x y y se puede forzar a 0 si zx o zy son 1.

b) Se puede negar x o y si nx o ny son 1.

c) Dependiendo de la señal f, se realiza una operación AND o una suma entre x e y.

d) Dependiendo de no, el resultado final puede negarse.

e) Las banderas zr y ng indican si el resultado es 0 o si es negativo, respectivamente.

