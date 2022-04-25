#!/bin/bash

nasm -f elf mul.asm
ld -m elf_i386 -s -o mul mul.o
