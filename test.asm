.model tiny

.code
org 100h

start:
    ; fiksuotas portas
    out 01h, al
    out 0ffh, al
    out 01h, ax
    out 0ffh, ax

    ; kintamas portas
    out dx, al
    out dx, ax

end start