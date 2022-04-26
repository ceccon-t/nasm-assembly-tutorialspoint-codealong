#!/bin/bash

nasm -f elf div.asm
ld -m elf_i386 -s -o div div.o
