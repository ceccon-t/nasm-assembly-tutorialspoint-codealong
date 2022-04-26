#!/bin/bash

nasm -f elf or.asm
ld -m elf_i386 -s -o or or.o
