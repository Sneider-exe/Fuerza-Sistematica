# Practica #2 - Proyectos 2 y 3

## 1. ¿Cuál es el objetivo de cada uno de esos proyectos con sus palabras y describa que debe hacer para desarrollarlo?

### Objetivo del Proyecto 2 (Lógica Aritmética):
La meta consiste en diseñar los componentes esenciales que posibilitan que una computadora realice operaciones lógicas y matemáticas. Con ese fin, hemos incorporado compuertas lógicas fundamentales como AND, OR y NOT, las cuales son combinadas para formar circuitos más avanzados, como sumadores y una Unidad Aritmético-Lógica, ALU. La ALU es el centro del procesamiento en una CPU, ya que lleva a cabo cálculos y decisiones basadas en operaciones aritméticas y lógicas.

Desarrollo:
Es necesario crear diagramas en un programa de simulación para la conexión de estas puertas lógicas. En el laboratorio anterior, comenzamos con puertas simples (como la puerta NOT) y ahora avanzamos hacia la construcción de circuitos más complejos, como el sumador de números enteros y la unidad lógica-aritmética (ALU). Este proyecto requiere comprender cómo se pueden descomponer las funciones básicas en sus componentes lógicos más simples y cómo se ensamblan estas piezas para formar un circuito capaz de realizar cálculos.

### Objetivo del Proyecto 3 (Lógica Secuencial):
El objetivo es generar los componentes de memoria del ordenador que permitan almacenar y recuperar información a lo largo del tiempo. Para ello es necesario idear registros y circuitos de RAM. Los siguientes están diseñados para ayudar al ordenador a "recordar" datos y mantener estados a lo largo del tiempo; esto es muy importante para ejecutar programas y gestionar datos.

Desarrollo:
Es necesario construir componentes de memoria, comenzando con los flip-flops, que almacenan un solo bit de información, y luego avanzando hacia los registros (que almacenan múltiples bits) y la RAM. Estos componentes secuenciales dependen de relojes y estados previos para efectuar el cambio de valor, lo que hace necesario comprender cómo funciona la memoria en los sistemas digitales.


## 2. Explique las principales diferencias entre la lógica aritmética y la lógica secuencial.

### Lógica Aritmética (Combinacional):
La lógica aritmética o lógica combinacional se refiere a un circuito cuya salida es puramente función de la entrada actual. No tienen memoria, por lo que su valor de salida en cualquier momento depende directamente del valor de entrada en el mismo momento. Ejemplos de tales circuitos son las puertas lógicas básicas (AND, OR, NOT) y los sumadores. La ALU realiza operaciones aritméticas como suma o comparación como parte de la lógica aritmética.

### Lógica Secuencial:
Por otro lado, la lógica secuencial contiene memoria. En estos circuitos, la salida depende no solo de la entrada actual, sino también del estado previo del sistema. Los flip-flops y los registros son ejemplos de lógica secuencial. Estos están sincronizados con un reloj, lo que les permite "guardar" información pasada, lo cual es fundamental para operaciones como almacenar datos en la memoria.

## BONUS: ¿Qué tipo de unidades aritmético lógicas existen?

Las Unidades Aritmético-Lógicas (ALU) son integrantes esenciales de los interpretadores, debido a que ejecutan acciones de lógica y matemática básicas. Hay diferentes clases de ALU, que varían en función de su complicación y posibilidades:

### 1. ALU Simple o Básica
Realiza procedimientos aritméticos ordinarios como la suma, la resta y las operaciones lógicas habituales como la AND, el OR y el NOT, además de XOR. Está en personas que tienen un bajo desempeño o en pequeños controladores de computadora en los cuales no es necesario un tratamiento superior.
### 2. ALU Multipropósito
Además de las operaciones básicas, puede realizar multiplicaciones, divisiones, desplazamientos de bits (shift) y operaciones de comparación. Se encuentra en procesadores más avanzados o en sistemas que requieren mayor capacidad de procesamiento, como CPUs para computadoras de propósito general.
### 3. ALU Paralela
Realiza varias operaciones aritméticas o lógicas en paralelo, lo que permite acelerar el procesamiento al dividir las tareas. Utilizada en procesadores de alto rendimiento, como los utilizados en servidores y supercomputadoras, donde la velocidad es crítica.
### 4. ALU de Precisión Extendida
Soporta operaciones con números de mayor tamaño (más bits) o mayor precisión, como números en coma flotante. Se usa en procesadores de alto rendimiento y en aplicaciones que requieren cálculos precisos, como la computación científica o el procesamiento de gráficos.
### 5. ALU SIMD (Single Instruction, Multiple Data)
Puede aplicar una operación aritmética o lógica a múltiples datos en paralelo, lo que es ideal para procesar grandes volúmenes de datos simultáneamente. Utilizada en procesadores gráficos (GPUs) y en aplicaciones de procesamiento de señales o multimedia, donde se requieren cálculos repetidos sobre matrices de datos.
### 6. ALU en Punto Flotante
Realiza operaciones con números en coma flotante (representación de números reales). Incluye soporte para operaciones aritméticas de mayor precisión, como suma y multiplicación en formato de punto flotante. Se encuentra en procesadores de propósito general y en CPUs para computación científica o aplicaciones gráficas donde es esencial el manejo de números no enteros.
### 7. ALU Vectorial
Similar a la ALU SIMD, pero especializada en procesar vectores de datos, lo que es muy útil en computación gráfica y en simulaciones físicas. Común en procesadores de alto rendimiento utilizados para cálculos científicos y gráficos.
