#!/bin/bash

nasm -f elf arrays.asm
ld -m elf_i386 -s -o arrays arrays.o
