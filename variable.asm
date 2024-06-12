; chung ta co the khai bao hang so tren dau tai day

isLamDepChai EQU 'yesssssss'

section .data

   choice DB 'y'     ; xac dinh byte, gia tri phan bo cua no la 1 byte
   number DW 12345   ; xac dinh tu co kick thuoc phan bo la 4 bytes
   so_am  DW -12345  ; xav dinh tu  co kich thuoc phan bo la 4 bytes va co the xac dinh so am
   so_lonw DQ 123456789 ; xac dinh tu giac co kick thuoc phan bo la 8 bytes
   so_thuc DD 1.23455   ; xac dinh tu kep co kick thuoc phan bo la 4 bytes
   so_Thuc DQ 123213.241; xac dinh so thuc lon co kic thuoc phan bo la 8 bytes

; moi 1 byte duoc luu duoi dang ASCII phan bo
; neu ban muon in ra mot ki tu lap lai nhieu lan vi du
   _9starts times 9 BD '*'    ; o day toi se in ra 9 ki tu mot la
; lenh INC dung de tang toan hang len mot, DEC thi dung de giam toan hang di mot 
; lenh ADD va SUB duoc su dung de cong tru don gian du lieu nhi phan theo kich thuoc byte, DW tuc la de cong tru cac ki tu 8 bit 16 bit va 32 bit tuong ung
 
