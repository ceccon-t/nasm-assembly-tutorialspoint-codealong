#!/bin/bash

nasm -f elf and.asm
ld -m elf_i386 -s -o and and.o
