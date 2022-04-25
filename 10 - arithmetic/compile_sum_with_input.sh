#!/bin/bash

nasm -f elf sum_with_input.asm
ld -m elf_i386 -s -o sum_with_input sum_with_input.o
