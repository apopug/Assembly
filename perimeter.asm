;****************************************************************************************************************************
;Program name: "perimeter".  This program take the two input from the user and calculate the average side and the perimeter.*
;                                                                                                                           *
;Copyright (C) 2021 Minh Tran.                                                                                              *
;                                                                                                                           *
;This file is part of the software program "Assigment 1".                                                                   *
;Assignment 1 is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License  *
;version 3 as published by the Free Software Foundation.                                                                    *
;Assignment is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied           *
;warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.     *
;A copy of the GNU General Public License v3 is available here:  <https:;www.gnu.org/licenses/>.                            *
;****************************************************************************************************************************

;;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
;;
;;Author information
;;Author name: Minh Tran
;;Author email: 
;;
;;   Program information
;;   Program name: perimeter.asm
;;   Programming languages: One modules in C and one module in X86
;;   Date program began: 02-08-2021
;;   Date of last update: 02-13-2021
;;   Files in this program: rectangle.c, perimeter.asm
;;   Purpose
;;   Calculate the perimeter and area of a rectangle
;;
;;
;;   This file
;;   File name: perimeter.asm
;;   Language: X86 with Intel syntax.



;=============================================================================
extern printf
extern scanf
global perimeter

segment .data

	welcomem  db "This program will compute the perimeter and the average side length of a rectangle.", 10, 0
	heightp   db "Enter the height:  ", 0
	lengthp   db "Enter the length:  ", 0 
	endm      db "I hope you enjoyed your rectangle", 10, 0
	
	displaype db "The perimeter is %3.3lf", 10, 0
	displayas db "The length of the average side is %5.3lf", 10, 0
	displayhe db "The enter height is: %3.3lf ", 10, 0
	displayle db "The enter length is: %3.3lf ", 10, 0 
	
	inputf    db "%lf", 0

segment .bss

segment .text ;excution
	
	perimeter:

	push rbp
	mov  rbp,rsp
	push rdi                                                 
	push rsi                                                  
	push rdx                                                    
	push rcx                                                    
	push r8                                                    
	push r9                                                    
	push r10                                                   
	push r11                                                    
	push r12                                                    
	push r13                                                    
	push r14                                                    
	push r15                                                    
	push rbx                                                   
	pushf                                                       

;==============Welcome_message============================
		mov  rdi, welcomem	
		mov  rax, 0 
		call printf
	
;==============Prompt_height==============================
		push qword 0
		mov  rdi, heightp  
		mov  rax, 0               
		call printf
	
;==========================================================
		push  qword 0 
		mov   rax, 0
		mov   rdi, inputf
		mov   rsi, rsp
		call  scanf
		movsd xmm10, [rsp]

;==============Display_height=============================
		mov   rax, 1
		mov   rdi, displayhe
		movsd xmm0, xmm10
		call  printf
		pop   rax
	
;==============Prompt_length=============================
		push qword 0
		mov  rax, 0 
		mov  rdi, lengthp	
		call printf
		pop  rax
	
;========================================================
		push  qword 0 
		mov   rax, 0
		mov   rdi, inputf
		mov   rsi, rsp
		call  scanf
		movsd xmm11, [rsp]	

;==============Display_height=============================
		mov   rax, 1
		mov   rdi, displayle
		movsd xmm0, xmm11
		call  printf
		pop   rax
		
;=========================================================
		addsd xmm10, xmm10
		addsd xmm10, xmm11
		addsd xmm10, xmm11
		
;==============Display_perimeter=========================
		push qword 0
		mov rax, 1
		mov rdi, displaype
		movsd xmm0, xmm10
		call printf
		pop rax
		
;==============Calculate_avg============================= 
		mov r10, 4
		movsd xmm11, xmm10
		cvtsi2sd xmm15, r10
		divsd xmm10, xmm15
		
;==============Display_avg===============================
		push qword 0 
		mov rax, 1
		mov rdi, displayas	
		movsd xmm0, xmm10
		call printf
		pop rax
	
;========================================================
		push qword 0 
		mov rax, 0 
		mov rdi, endm
		call printf
		movsd xmm0, xmm11
		pop rax
		pop rax
;========================================================
		
	popf                                                        
	pop rbx                                                     
	pop r15                                                     
	pop r14                                                    
	pop r13                                                   
	pop r12                                                    
	pop r11                                            
	pop r10                                             
	pop r9                                               
	pop r8                                                      
	pop rcx                                                    
	pop rdx                                                    
	pop rsi                                                     
	pop rdi                                                    
	pop rbp                                                   

	ret 
