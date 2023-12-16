.model tiny

.code
org 100h

start:
    ;; mov scenario 3
    mov al, 11h
    mov cl, 11h
    mov dl, 11h
    mov bl, 11h
    mov ah, 11h
    mov ch, 11h
    mov dh, 11h
    mov bh, 11h
    mov ax, 1111h
    mov cx, 1111h
    mov dx, 1111h
    mov bx, 1111h
    mov sp, 1111h
    mov bp, 1111h
    mov si, 1111h
    mov di, 1111h

end start