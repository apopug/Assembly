#!/bin/bash

#Program: Assigment1
#Author: Minh Tran

rm *.o
rm *.out

echo "Assemble perimeter.asm"
nasm -f elf64 -l perimeter.lis -o perimeter.o perimeter.asm

echo "Compile rectangle.c using the gcc compiler standard 2011"
gcc -c -Wall -m64 -no-pie -o rectangle.o rectangle.c -std=c11

echo "Link the object files using the gcc linker standard 2011"
gcc -m64 -no-pie -o perimeter_area_output.out rectangle.o perimeter.o -std=c11

echo "Run the program Assigment 1:"
./perimeter_area_output.out

echo "The script file will be terminate."
