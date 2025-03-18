#!/bin/bash

nasm -f elf64 evenodd.asm -o evenodd.o 
ld -o evenodd evenodd.o 
./evenodd
EXIT_CODE=$? 
echo $EXIT_CODE
exit $EXIT_CODE
