#!/bin/bash

nasm -f elf aas.asm
ld -m elf_i386 -s -o aas aas.o
