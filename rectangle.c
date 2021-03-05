//****************************************************************************************************************************
//Program name: "rectangle".  This program take the two input from the user and calculate the average side and the perimeter.*
//                                                                                                                           *
//Copyright (C) 2021 Minh Tran.                                                                                              *
//                                                                                                                           *
//This file is part of the software program "Assigment 1".                                                                   *
//Assignment 1 is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License  *
//version 3 as published by the Free Software Foundation.                                                                    *
//Assignment is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied           *
//warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.     *
//A copy of the GNU General Public License v3 is available here:  <https:;www.gnu.org/licenses/>.                            *
//****************************************************************************************************************************


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
//
//Author information
//  Author name: Minh Tran
//  Author email: 
//
//Program information
//  Program name: rectangle.c
//  Programming languages: One modules in C and one module in X86
//  Date program began: 02-08-2021
//  Date of last update: 02-08-2021
//  Files in this program: rectangle.c, perimeter.asm
//
//Purpose
//  Calculate the perimeter and area of a rectangle
//

#include <stdio.h>

extern double perimeter();
int main()
{
 
 printf("Welcome to a friendly assembly program by Minh Tran. \n");
 double answer = perimeter();
 printf("The main function received this number %3.3lf and has decided to keep it.\n", answer);
 printf("A 0 will be return to the operating system.\nHave a nice day. \n");
 return 0;
}
