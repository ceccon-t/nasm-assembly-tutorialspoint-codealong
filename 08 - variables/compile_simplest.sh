#!/bin/bash

nasm -f elf simplest.asm
ld -m elf_i386 -s -o simplest simplest.o