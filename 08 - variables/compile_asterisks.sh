#!/bin/bash 

nasm -f elf asterisks.asm
ld -m elf_i386 -s -o asterisks asterisks.o
