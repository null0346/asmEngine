section.text
    global _start

_start:
    mov     edx,len     ; length of the print
    mov     ecx,msg     ; message to print
    mov     ebx,1       ; the file descriptor, so like Sys.println in haxe
    mov     eax,4       ; system call number, this one is sys_write
    int     0x80        ; call the kernel

    mov     eax,1       ; this one is sys_exit
    int     0x80        ; we calling the dang kernel again :fire:

section.data
msg db 'Hello World!',0xa   ; the string we are printing
len equ $ - msg     ; length of the message

; okay will it work? lets find out
; bwoom ts daduh duh hauehhaueh bwoooooooooohm duhdhuehuehudm bweeeh bwuuhh huuuueh duuh huh dhuudh ip ip ip hah duhdhuhudhu dindudhudhu