# Practica #2 - Proyectos 2 y 3

## 1. ¿Cuál es el objetivo de cada uno de esos proyectos con sus palabras y describa que debe hacer para desarrollarlo?

### Objetivo del Proyecto 2 (Lógica Aritmética):
El objetivo es construir los circuitos fundamentales que ejecutan operaciones lógicas y aritméticas en una computadora. Por consiguiente, implementamos puertas lógicas básicas (como AND, OR, NOT) y las combiamos para crear circuitos más complejos como sumadores y una Unidad Aritmético-Lógica (ALU). La ALU es el corazón del procesamiento en una CPU, ya que permite realizar cálculos y decisiones basadas en operaciones aritméticas y lógicas.

Desarrollo:
Debemos diseñar circuitos en un simulador que conecte estas puertas lógicas. Primero, en la practica pasada, empezamos con puertas simples (como la NOT) y ahora avanzamos hasta construir circuitos más grandes, como el sumador completo y la ALU. Este proyecto requiere entender cómo las operaciones básicas se pueden descomponer en sus componentes lógicos más simples y cómo estas piezas se ensamblan para formar un circuito capaz de realizar cálculos.

### Objetivo del Proyecto 3 (Lógica Secuencial):
El objetivo es crear los componentes de memoria de la computadora, que permiten almacenar y recuperar información a lo largo del tiempo. Esto incluye diseñar registros y circuitos de memoria RAM. Estos elementos permiten que una computadora "recuerde" datos y mantenga estados a lo largo del tiempo, lo cual es fundamental para la ejecución de programas y el manejo de datos.

Desarrollo:
Debemos construir componentes de memoria, comenzando con flip-flops que almacenan un solo bit de información y luego avanzar hacia registros (que almacenan múltiples bits) y memoria RAM. Estos componentes secuenciales dependen de relojes y estados anteriores para cambiar su valor, lo cual requiere entender cómo funciona la memoria en sistemas digitales.


## 2. Explique las principales diferencias entre la lógica aritmética y la lógica secuencial.

### Lógica Aritmética (Combinacional):
La lógica aritmética, o combinacional, se refiere a circuitos cuyo comportamiento depende únicamente de las entradas actuales. No tienen memoria; su salida en cualquier momento es una función directa de sus entradas en ese momento. Ejemplos de estos circuitos incluyen puertas lógicas básicas (AND, OR, NOT) y sumadores. Las operaciones en la ALU, como sumar o comparar números, se realizan usando lógica aritmética.

### Lógica Secuencial:
La lógica secuencial, por otro lado, incorpora elementos de memoria. En estos circuitos, la salida depende no solo de las entradas actuales sino también del estado anterior del sistema. Los flip-flops y los registros son ejemplos de lógica secuencial. Estos circuitos están sincronizados con un reloj, lo que les permite "retener" información pasada, lo que es fundamental para operaciones como el almacenamiento de datos en memoria.

## BONUS: ¿Qué tipo de unidades aritmético lógicas existen?

Las Unidades Aritmético-Lógicas (ALU) son componentes fundamentales de los procesadores, ya que realizan operaciones aritméticas y lógicas básicas. Existen varios tipos de ALUs, que varían en términos de su complejidad y funciones:

### 1. ALU Simple o Básica
Realiza operaciones aritméticas básicas como suma, resta y operaciones lógicas simples como AND, OR, NOT, y XOR. Se encuentra en procesadores de bajo rendimiento o en microcontroladores donde no se requiere un procesamiento avanzado.
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
