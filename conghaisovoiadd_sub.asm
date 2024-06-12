section .data
   nhap db 'xin vui long nhap so: ', 0XA,0XD    ;
   len_nhap equ $ - nhap                        ;

section .bss
   num1 resb 2              ;
   num2 resb 2              ;
   num3 resb 1              ;

section .text
   global _start            ;

_start:

   mov eax, 4    ;
   mov ebx, 1    ;
   mov ecx, nhap ;
   moc edx, len_nhap ;
   int 0x80          ;


   mov eax, 3     ;
   mov ebx, 2     ;
   mov ecx, num1  ;
   mov edx, 2     ;
   int 0x80       ;

   mov eax, 4     ;
   mov ebx, 1
   mov ecx, nhap
   mov edx len_nhap
   int 0x80

   mov eax, 3
   mov ebx, 2
   mov ecx, num2  ;
   mov edx, 2     ;
   int 0x80

   ; de thuc hien cong hai so nay thi dau tien chung ta can phai di chuyen bien num1 vao thanh ghi eax va bien num2 vao thanh ghi ebx
   ; tiep sau do chung ta se thuc hien  tru no cho ascii '0' de thuc hien chuyen no lai thanh  decimal number
   mov eax, [num1]
   sub eax , '0'

   mov ebx, [num2]
   sub ebx,  '0'

   ; tien hanh cong eax va ebx
   add eax, ebx
   ; tien hanh cong nguoc vao '0' de convert nguoc lai tu decimal number -> ascii
   add eax, '0'

   ; lua gia tri tinh duoc vao trong bo nho cua num3
   mov [res], eax

   mov eax, 4
   mov ebx, 1
   mov ecx, num3
   mov edx, 1
   int 0x80

   int eax, 1
   int 0x80
