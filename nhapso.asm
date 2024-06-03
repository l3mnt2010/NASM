section .data            ; data segment
   inputUser  db  'Vui long nhap so n:'         ;
   name       db  'Truong Ngoc Lam'             ;
   len_name   equ  $ - name                     ;
   lengthLabel  equ   $ - inputUser             ;


section .bss     ; Uninitialized  data
   num     resb      5    ;

section .text
   global _start   ;


_start:     ;
   mov eax, 4 ;
   mov ebx, 1 ;
   mov ecx, inputUser ;
   mov edx, lengthLabel ;
   int 0x80

   mov eax, 3 ;
   mov ebx, 2 ;
   mov ecx, num ;
   mov edx, 5   ;
   int 0x80     ;

   mov eax, 4   ;
   mov ebx, 1   ;
   mov ecx, num ;
   mov edx, 5   ;
   int 0x80     ;

   mov eax, 1   ;
   int 0x80     ;
