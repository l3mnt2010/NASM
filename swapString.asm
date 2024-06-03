section .data            ; data segment 
   name       db  'Ngoc Lam'             ;
   len_name   equ  $ - name              ;       ;

section .text
   global _start   ;

_start:     ;
   ; write name
   mov eax, 4 ;
   mov ebx, 1 ;
   mov ecx, name ;
   mov edx, len_name ;
   int 0x80     ;

   mov [name], dword 'Linh'    ; dw 4 bytes swap 4 bytes of name

   ; write name after swap
   mov eax, 4 ; write_sys
   mov ebx, 1 ;    file descriptor 1
   mov ecx, name ;
   mov edx, len_name  ;
   int 0x80    ;

   mov eax, 1   ;   sys_end
   int 0x80     ;   call kernel
