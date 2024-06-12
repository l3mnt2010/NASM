section .data
  hihi db 'Chung ta cua hien tai la nam bao nhieu xin moi ban nhap day du nam: '    ; khai bao bien hihi va gan gia tri cho no
  len1 equ $ - hihi                  ; khai bao do dai cua bien hihi la len1

section .bss                         ; noi nay de thuc hien khai bao so byte cua ki tu sap duoc nhap vao tu ban phim
  num1 resb 5                        ; khai bao cho chieu dai cua no la 5 bytes

section .text
    global _start                     ; khai bao bien toan cau cua ham main

_start:                               ; ham main

   mov eax,4                         ; goi lenh sys_write o thanh ghi eax
   mov ebx,1                         ; khai bao vao trong fd so 1
   mov ecx, hihi                     ; di chuyen gia tri cua hihi vao trong thanh ghi ecx
   mov edx, len1                     ; thong bao do dai la bytes cua bien duoc khai bao o eax
   int 0x80                          ; call kernel cua linux

   mov eax, 3                        ;goi lenh system_read de thuc hien doc gia tri duoc nhap tu ban phim
   mov ebx, 2                        ; khai bao vao trong fd so 2
   mov ecx, num1                     ; chuyen gia tri cua num1 vao trong thanh ghi ecx
   mov edx, 5                        ; thong bao do dai 5 bytes cua bien duoc nhap vao tu ban phim
   int 0x80                          ; call kernel cua linux 

   mov eax, 4                        ; xin luu y rang call system co the nhan gia tri tu 1 den 6, 5 la open file, 6 la  sys_close
   mov ebx, 1                        ;
   mov ecx, num1                     ;
   mov edx, 5                        ;
   int 0x80                          ;
 

   mov eax, 1                        ; goi sys_exit de ket thuc chuong trinh
   int 0x80                          ; call kernel cua linux de thuc hien ket thuc chuong trinh
