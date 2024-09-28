// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// Mult.asm - Implementación del multiplicador en lenguaje de bajo nivel para Nand2Tetris

// El programa multiplica dos números enteros que se encuentran en el registro D
// La entrada es: D contiene el primer número (multiplicando), R0 contiene el segundo número (multiplicador)
// La salida es: el resultado se almacena en R1

@R0           // Cargar el registro R0 (segundo número)
D=M           // Almacenar el valor de R0 en D
@R1           // Preparar R1 para acumular el resultado
M=0           // Inicializar R1 a 0 (resultado)

(LOOP)        // Etiqueta para el bucle de multiplicación
@R0           // Cargar el registro R0 nuevamente
D=M           // D = R0 (segundo número)

@END          // Comprobar si hemos terminado
D;JEQ         // Si D es cero, saltar a END (hemos terminado)

@R1           // Cargar el resultado en R1
M=M+D         // Sumar D a R1 (acumular el resultado)

@R0           // Decrementar el contador
M=M-1         // R0 = R0 - 1
@LOOP         // Volver al inicio del bucle
0;JMP         // Saltar a la etiqueta LOOP

(END)         // Etiqueta final
@END          // Detener el programa
0;JMP         // Bucle infinito (detener ejecución)
