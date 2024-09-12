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