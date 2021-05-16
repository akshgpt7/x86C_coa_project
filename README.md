# x86C Number Operations
A C library written using 32-bit x86 Assembly Language

**Note: Only works for integer inputs currently (since there are different instructions in x86 for floating point operations).**

## Requirements
- An x86 Linux machine
- NASM assembler
- GCC compiler

## Usage for Linux (not tested on Windows)

### Running the test file
- Clone the repository: `git clone https://github.com/akshgpt7/x86C_coa_project/ && cd `.
- Assemble the asm file using: `nasm -f elf32 number_operations.asm -o number_operations.o`.
- Compile the test file using: `gcc -m32 number_operations.o test.c -o test`.
- Run the executable: `./test`.

Note: If you get some compatibility errors with 64-bit systems, make sure you have the [`libc-dev package`](https://stackoverflow.com/a/7412698) and `gcc-multilib` installed.

### Using as a library in your C code
- Clone the repository: `git clone https://github.com/akshgpt7/x86C_coa_project/ && cd `.
- Include the `number_operations.h` header in your C code and use any fucntion from it.
