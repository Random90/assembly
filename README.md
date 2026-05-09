Run all in the root of the project

Use NASM to assemble the add_values.asm file into an object file:

`nasm -I./src/ -f elf64 -DARCH_X86_64=1 -DHAVE_ALIGNED_STACK=1 -Dprivate_prefix=ff -o build/add_values.o src/add_values.asm`

Use GCC to compile and link the C code with the assembled object file:

`gcc -o build/program src/main.c build/add_values.o`
