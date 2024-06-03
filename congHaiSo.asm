section .data                                ; data segment
   input1  db  'Vui long nhap so thu 1 :',0xA,0xD ;
   len1   equ  $ - input1                    ;
   input2 db   'Vui long nhap so thu 2: ',0xA,0xD ;
   len2   equ   $ - input2                   ;
   result db   'Tong cua 2 so la: ',0xA,0xD ;
   len3   equ   $ - result                  ;



section .bss                                 ; Uninitialized  data
   num1     resb      2                      ; khai bao va gan cho 2 bytes char or num
   num2     resb      2                      ;
   res      resb      1                      ; 1byte

section .text
   global _start   ;


_start:     ;
   ; write input1
   mov eax, 4 ;
   mov ebx, 1 ;
   mov ecx, input1 ;
   mov edx, len1 ;
   int 0x80

   ; read and store num1
   mov eax, 3 ;
   mov ebx, 0  ; read and store num1
   mov eax, 3 ;
   mov ebx, 0 ;
   mov ecx, num1 ;
   mov edx, 2   ;
   int 0x80     ;

   ; write input2
   mov eax, 4 ;
   mov ebx, 1 ;
   mov ecx, input2 ;
   mov edx, len2 ;
   int 0x80      ;

    ; read and store num2
   mov eax, 3 ;
   mov ebx, 0 ;
   mov ecx, num2 ;
   mov edx, 2   ;
   int 0x80     ;

   ; write result
   mov eax, 4 ;
   mov ebx, 1 ;
   mov ecx, result  ;
   mov edx, len3 ;
   int 0x80

   ; moving the first number to eax register and second number to ebx
   ; and subtracting ascii '0' to convert it into a decimal number

   mov eax, [num1]
   sub eax, '0'

   mov ebx, [num2]
   sub ebx, '0'

   ; add eax and ebx
   add eax, ebx
   ; add '0' to to convert the sum from decimal to ASCII
   add eax, '0'

   ; storing the sum in memory location res
   mov [res], eax         ;

    ; write result
   mov eax, 4 ;
   mov ebx, 1 ;
   mov ecx, res  ;
   mov edx, 1 ;
   int 0x80      ; 

   mov eax, 1   ;
   int 0x80     ;
