#!/bin/bash

nasm -f elf equ.asm
ld -m elf_i386 -s -o equ equ.o
