section .data
    hello db 'Hello world'  ; Định nghĩa một chuỗi 'Hello world' và gán nó vào biến 'hello'
    length equ $-hello      ; Tính độ dài của chuỗi 'Hello world' bằng cách lấy vị trí hiện tại ($) trừ đi vị trí của 'hello'
    hihi db 'Lam'
    length_hihi equ $-hihi
section .text
    global _start           ; Định nghĩa nhãn _start là điểm bắt đầu của chương trình

_start:
    mov eax, 0x4            ; Đặt syscall number cho hàm 'write' (syscall số 4) vào thanh ghi eax
    mov ebx, 0x1            ; Đặt file descriptor cho stdout (1) vào thanh ghi ebx
    mov ecx, hello          ; Đặt địa chỉ của chuỗi 'Hello world' vào thanh ghi ecx
    mov edx, length         ; Đặt độ dài của chuỗi 'Hello world' vào thanh ghi edx
    int 0x80                ; Gọi interrupt 0x80 để thực hiện syscall 'write'

    mov eax, 0x4            ;
    mov ebx, 0x1            ;
    mov ecx, lf             ; dat dia chi cua line fine xuong dong vao thanh ghi ecx
    mov edx, 1              ; 1 byte
    int 0x80                ;

    mov eax, 0x4            ; same tren
    mov ebx, 0x1            ;
    mov ecx, hihi           ;
    mov edx, length_hihi    ;
    int 0x80                ;

_exit:
    mov eax, 0x1            ; Đặt syscall number cho hàm 'exit' (syscall số 1) vào thanh ghi eax
    int 0x80                ; Gọi interrupt 0x80 để thực hiện syscall 'exit'

section .bss
    lf resb 1  
