
# Proyecto 6: Ensamblador para el computador Hack

Este proyecto consiste en la creacion de un ensamblador que traduce programas escritos en lenguaje ensamblador Hack (.asm) a código máquina binario (.hack). El ensamblador Hack es un lenguaje de bajo nivel que interactua directamente con el hardware del computador Hack.

El proyecto se desarrolla en dos pasos:

1. **Paso 1**: Implementar un ensamblador que maneje instrucciones sin simbolos (instrucciones A y C basicas).
2. **Paso 2**: Extender el programa que hicimos para que sea capaz de traducir simbolos(variables y etiquetas).

El ensamblador leerá un archivo `.asm` de entrada y generará un archivo `.hack` de salida con el código binario.

## Com esta hecho el programa

### Paso 1: Leer el archivo `.asm`

Primero, necesitamos leer el archivo `.asm`, eliminando los comentarios y líneas vacías. La función `read_asm_file` sera la encargada de eso:

```python
def read_asm_file(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()
    
    # Filtramos los comentarios y las líneas vacías
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
            "0": "0101010",
            "1": "0111111",
            "-1": "0111010",
            "D": "0001100",
            "A": "0110000",
            "M": "1110000",
            "!D": "0001101",
            "!A": "0110001",
            "!M": "1110001",
            "-D": "0001111",
            "-A": "0110011",
            "-M": "1110011",
            "D+1": "0011111",
            "A+1": "0110111",
            "M+1": "1110111",
            "D-1": "0001110",
            "A-1": "0110010",
            "M-1": "1110010",
            "D+A": "0000010",
            "D+M": "1000010",
            "D-A": "0010011",
            "D-M": "1010011",
            "A-D": "0000111",
            "M-D": "1000111",
            "D&A": "0000000",
            "D&M": "1000000",
            "D|A": "0010101",
            "D|M": "1010101"
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

### Paso 4: Manejo de etiquetas y símbolos

Para manejar etiquetas y variables simbólicas tales como `@R0`, `@OUTPUT_D`, utilizamos una tabla de símbolos con su correspondiente numero.

#### Tabla de símbolos:

```python
symbol_table = {
    'R0': 0, 'R1': 1, 'R2': 2, 'R3': 3, 'R4': 4, 'R5': 5, 'R6': 6, 'R7': 7,
    'R8': 8, 'R9': 9, 'R10': 10, 'R11': 11, 'R12': 12, 'R13': 13, 'R14': 14, 'R15': 15,
    'SCREEN': 16384, 'KBD': 24576, 'SP': 0, 'LCL': 1, 'ARG': 2, 'THIS': 3, 'THAT': 4
}
```

#### Primera pasada: Busqueda e identificacion de etiquetas

En la primera pasada, recorremos el archivo `.asm` para identificar las etiquetas y asignarles direcciones de memoria en la tabla de símbolos.

```python
def first_pass(lines):
    rom_address = 0
    for line in lines:
        if line.startswith('(') and line.endswith(')'):
            label = line[1:-1]  # Extraer el nombre de la etiqueta
            symbol_table[label] = rom_address
        else:
            rom_address += 1  # Solo las instrucciones cuentan como direcciones ROM
```

#### Segunda pasada: Traducción de instrucciones tipo a y c

En la segunda pasada, traducimos las instrucciones A y C, y reemplazamos las etiquetas y variables con las direcciones correctas.

```python
def second_pass(lines):
    machine_code = []
    ram_address = 16  # Comienza en 16 para las variables

    for line in lines:
        if line.startswith('(') and line.endswith(')'):
            continue  # Las etiquetas se manejaron en la primera pasada

        if line.startswith('@'):
            symbol = line[1:]
            if symbol.isdigit():
                machine_code.append(translate_a_instruction(line))  # Es un número directo
            else:
                if symbol not in symbol_table:
                    symbol_table[symbol] = ram_address
                    ram_address += 1
                machine_code.append(translate_a_instruction(f"@{symbol_table[symbol]}"))
        else:
            machine_code.append(translate_c_instruction(line))

    return machine_code
```

### Paso 5: Proceso completo de assembler

Finalmente, unimos todo el proceso en una función que lea el archivo `.asm`, maneje etiquetas y variables, y genere el archivo `.hack`.

```python
def assemble(file_path):
    lines = read_asm_file(file_path)
    
    # Primera pasada para manejar etiquetas
    first_pass(lines)
    
    # Segunda pasada para traducir instrucciones
    machine_code = second_pass(lines)

    # Escribir el archivo de salida
    output_file = file_path.replace('.asm', '.hack')
    with open(output_file, 'w') as file:
        for instruction in machine_code:
            file.write(instruction + '\n')

    print(f'Archivo {output_file} generado')
```

El ensamblador generará un archivo `.hack` con el código binario correspondiente
