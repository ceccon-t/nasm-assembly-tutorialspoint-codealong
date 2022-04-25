#!/bin/bash

nasm -f elf sum_hardcoded.asm
ld -m elf_i386 -s -o sum_hardcoded sum_hardcoded.o
