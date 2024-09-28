# MULT.ASM

El componente Mult.asm es un multiplicador que toma dos números enteros como entrada y calcula su producto. En este caso, el primer número (multiplicando) se encuentra en el registro D y el segundo número (multiplicador) se almacena en R0. El resultado se acumula en el registro R1. La multiplicación se realiza mediante la suma repetida: el segundo número se utiliza como un contador que se decrece en cada iteración del bucle, y en cada paso, se suma el primer número al resultado acumulado en R1. Cuando el multiplicador (R0) llega a cero, el bucle termina y el resultado final está disponible en R1.
![image](https://github.com/user-attachments/assets/c261cb4d-df20-45e9-9e06-b5a8a3e365d8)
