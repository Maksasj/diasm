.model tiny

.code
org 100h

start:
    ;; mov scenario 4
    mov al, byte ptr ds:0ffffh
    mov ax, word ptr ds:0ffffh

end start