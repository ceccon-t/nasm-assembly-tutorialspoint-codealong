#!/bin/bash

nasm -f elf read_num.asm
ld -m elf_i386 -s -o read_num read_num.o
