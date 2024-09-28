// Mult.asm - Implementación del multiplicador en lenguaje de bajo nivel para Nand2Tetris

// El programa multiplica dos números enteros que se encuentran en el registro D
// La entrada es: D contiene el primer número (multiplicando), R0 contiene el segundo número (multiplicador)
// La salida es: el resultado se almacena en R1

// @R0 Cargar el registro R0 (segundo número)
// D=M Almacenar el valor de R0 en D
// @R1 Preparar R1 para acumular el resultado
// M=0 Inicializar R1 a 0 (resultado)

// (LOOP) Etiqueta para el bucle de multiplicación
// @R0 Cargar el registro R0 nuevamente
// D=M D = R0 (segundo número)

// @END Comprobar si hemos terminado
// D;JEQ Si D es cero, saltar a END (hemos terminado)

// @R1 Cargar el resultado en R1
// M=M+D Sumar D a R1 (acumular el resultado)

// @R0 Decrementar el contador
// M=M-1 R0 = R0 - 1
// @LOOP Volver al inicio del bucle
// 0;JMP Saltar a la etiqueta LOOP

// (END) Etiqueta final
// @END Detener el programa
// 0;JMP Bucle infinito (detener ejecución)

// Put your code here.

  @R2
  M=0 // Set R2=0
  @R0
  D=M
  @count
  M=D // initialize count to value in R0 - # of times to add R1

(LOOP)
  @count
  D=M // D=count
  @END
  D;JEQ // if count is 0 goto END
  @R1
  D=M // D=R1
  @R2
  M=D+M // add R1 to sum
  @count
  M=M-1 // decrement the count
  @LOOP
  0;JMP // Goto LOOP
(END)
  @END
  0;JMP // Infinite loop at end
