
# Proyecto 6 - Nand2Tetris: Ensamblador para el computador Hack

Este proyecto consiste en la creación de un ensamblador que traduce programas escritos en lenguaje ensamblador Hack (.asm) a código máquina binario (.hack). El ensamblador Hack es un lenguaje de bajo nivel que interactúa directamente con el hardware del computador Hack.

## Descripción del proyecto

El proyecto tiene dos pasos:

1. **Paso 1**: Implementar un ensamblador que maneje instrucciones sin simbolos (instrucciones A y C basicas).
2. **Paso 2**: Extender el ensamblador para manejar simbolos (variables y etiquetas).

El ensamblador leerá un archivo `.asm` de entrada y generará un archivo `.hack` de salida con el código binario.

### Paso 1: Leer el archivo `.asm`

Primero, leer el archivo `.asm`,eliminar comentarios y lineas vacias para esto esta la funcion `read_asm_file()`.

```python
def read_asm_file(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()
    
    # Eliminamos los comentarios y las líneas vacías
    clean_lines = []
    for line in lines:
        # Quitamos los espacios y comentarios
        line = line.split('//')[0].strip()
        if line:  # Si la línea no está vacía después de limpiar
            clean_lines.append(line)
    return clean_lines
```

### Paso 2: Traducción de instrucciones tipo A

Las instrucciones tipo A comienzan con `@` y representan un valor numérico. La función `translate_a_instruction` se encarga de traducirlas a un valor binario de 16 bits.

```python
def translate_a_instruction(instruction):
    value = instruction[1:]  # Quitamos el '@'
    binary_value = bin(int(value))[2:]  # Convertimos a binario y quitamos '0b'
    return '0' + binary_value.zfill(15)  # Aseguramos que tenga 16 bits
```

### Paso 3: Traducción de instrucciones tipo C

Las instrucciones tipo C realizan operaciones aritméticas y lógicas. Utilizamos tablas de traducción para convertir las partes de la instrucción (`comp`, `dest`, `jump`) a código binario.

Tablas de traducción:

```python
comp_table = {
    '0':   '0101010', '1':   '0111111', '-1':  '0111010',
    'D':   '0001100', 'A':   '0110000', '!D':  '0001101',
}

dest_table = {
    'null': '000', 'M': '001', 'D': '010', 'MD': '011', 'A': '100', 'AM': '101', 'AD': '110', 'AMD': '111'
}

jump_table = {
    'null': '000', 'JGT': '001', 'JEQ': '010', 'JGE': '011', 'JLT': '100', 'JNE': '101', 'JLE': '110', 'JMP': '111'
}
```

La función `translate_c_instruction` se encarga de la traducción:

```python
def translate_c_instruction(instruction):
    dest, comp, jump = 'null', '', 'null'
    
    if '=' in instruction:
        dest, instruction = instruction.split('=')
    if ';' in instruction:
        comp, jump = instruction.split(';')
    else:
        comp = instruction
    
    comp_bits = comp_table[comp]
    dest_bits = dest_table[dest]
    jump_bits = jump_table[jump]
    
    return '111' + comp_bits + dest_bits + jump_bits
```

### Paso 4: Proceso completo de ensamblaje

Unir todo lo hecho en una función que lea el archivo `.asm`, traduzca las instrucciones y genere el archivo `.hack`.

```python
def translate_instruction(instruction):
    if instruction.startswith('@'):
        return translate_a_instruction(instruction)
    else:
        return translate_c_instruction(instruction)

def assemble(file_path):
    lines = read_asm_file(file_path)
    machine_code = []
    
    for line in lines:
        machine_code.append(translate_instruction(line))
    
    output_file = file_path.replace('.asm', '.hack')
    with open(output_file, 'w') as file:
        for instruction in machine_code:
            file.write(instruction + '\n')
    
    print(f'Archivo {output_file} generado exitosamente.')
```


### Resultado final

El ensamblador generará un archivo `.hack` con el código binario correspondiente.
