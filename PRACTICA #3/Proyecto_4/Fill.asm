// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

(BEGIN)
    // Direccion para el valor de entrada del teclado
    @24576
    D=A
    @keyboard
    M=D           // Esto Guarda la direccion de teclado en keyboard

(CHECK_KEYBOARD)
    // Direccion del ultimo pixel en el mapa de pantalla
    @24575
    D=A
    @current
    M=D           // Guardar direccion del ultimo pixel en current

    // Comprobar si es que se presiono una tecla
    @keyboard
    A=M           // Se apuntaa a la direccion del teclado
    D=M           // Se carga el valor del teclado
    @fillvalue
    M=-1          // El valor de llenado (-1) para la pantalla
    @DRAW
    D;JNE         // Si una tecla esta presionada (D != 0), salta a DRAW

    // Si no se presiono ninguna tecla, se limpia la pantalla
    @fillvalue
    M=0           // Valor de limpiado (0) para la pantalla

(DRAW)
    // Llenar o limpiar el pixel actual dependiendo de fillvalue
    @fillvalue
    D=M           // Se Carga el valor de llenado o limpiado
    @current
    A=M           // Se apunta a la direccion del pixel actual
    M=D           // Y se asigna el valor al pixel

    // Comprobar si ya se ha alcanzado el primer pixel del mapa
    @current
    D=M           // Se carga la direccion actual del pixel
    @16384
    D=D-A         // Se resta la direccion base del primer pixel
    @CHECK_KEYBOARD
    D;JLE         // Si ya se alcanzo el primer pixel, volver a CHECK_KEYBOARD

    // Se decrementa la direccion del pixel actual
    @current
    M=M-1         // Y se mueve al pixel anterior
    
    // Se continua dibujando o limpiando el siguiente pixel
    @DRAW
    0;JMP         // Saltar de nuevo a DRAW para continuar el bucle