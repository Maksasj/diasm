.model tiny

.code
org 100h

start:
    ;; mov scenario 5
    mov byte ptr ds:0ffffh, al
    mov word ptr ds:0ffffh, ax

end start