[org 0x7c00]
mov bx,HELLO
call print
call print_nl
mov bx,GOODBYE
call print
call print_nl
jmp $
%include "boot_simpleos_print.asm"
HELLO:
    db 'Hello,World',0
GOODBYE:
    db 'Good bye',0
times 510-($-$$) db 0
dw 0xaa55
