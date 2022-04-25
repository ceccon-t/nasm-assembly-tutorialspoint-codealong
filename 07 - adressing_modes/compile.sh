#!/bin/bash

nasm -f elf change_string.asm 
ld -m elf_i386 -s -o change_string change_string.o
