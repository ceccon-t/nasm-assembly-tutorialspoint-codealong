#!/bin/bash

nasm -f elf loop.asm
ld -m elf_i386 -s -o loop loop.o
