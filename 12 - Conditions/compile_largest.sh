#!/bin/bash

nasm -f elf largest.asm
ld -m elf_i386 -s -o largest largest.o
