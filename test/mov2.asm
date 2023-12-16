.model tiny

.code
org 100h

start:
    ;; mov scenario 2
    mov byte ptr [bx + si], 11h
    mov byte ptr [bx + di], 11h
    mov byte ptr [bp + si], 11h
    mov byte ptr [bp + di], 11h
    mov byte ptr [bx + si], 11h
    mov byte ptr [bx + di], 11h
    mov byte ptr [bp + si], 11h
    mov byte ptr [bp + di], 11h

    mov byte ptr [si], 11h
    mov byte ptr [di], 11h
    mov byte ptr ds:0002h, 11h
    mov byte ptr [bx], 11h

    mov byte ptr [bx + si + 11h], 11h
    mov byte ptr [bx + di + 11h], 11h
    mov byte ptr [bp + si + 11h], 11h
    mov byte ptr [bp + di + 11h], 11h

    mov byte ptr [si + 11h], 11h
    mov byte ptr [di + 11h], 11h
    mov byte ptr [bp + 11h], 11h
    mov byte ptr [bx + 11h], 11h

    mov byte ptr [bx + si + 1111h], 11h
    mov byte ptr [bx + di + 1111h], 11h
    mov byte ptr [bp + si + 1111h], 11h
    mov byte ptr [bp + di + 1111h], 11h

    mov byte ptr [si + 1111h], 11h
    mov byte ptr [di + 1111h], 11h
    mov byte ptr [bp + 1111h], 11h
    mov byte ptr [bx + 1111h], 11h

    ;; tasm compiles this to scenario 3
    ;; mov al, 11h
    ;; mov cl, 11h
    ;; mov dl, 11h
    ;; mov bl, 11h

    ;; mov ah, 11h
    ;; mov ch, 11h
    ;; mov dh, 11h
    ;; mov bh, 11h

    mov word ptr [bx + si], 1111h
    mov word ptr [bx + di], 1111h
    mov word ptr [bp + si], 1111h
    mov word ptr [bp + di], 1111h
    mov word ptr [bx + si], 1111h
    mov word ptr [bx + di], 1111h
    mov word ptr [bp + si], 1111h
    mov word ptr [bp + di], 1111h

    mov word ptr [si], 1111h
    mov word ptr [di], 1111h
    mov word ptr ds:0002h, 1111h
    mov word ptr [bx], 1111h

    mov word ptr [bx + si + 11h], 1111h
    mov word ptr [bx + di + 11h], 1111h
    mov word ptr [bp + si + 11h], 1111h
    mov word ptr [bp + di + 11h], 1111h

    mov word ptr [si + 11h], 1111h
    mov word ptr [di + 11h], 1111h
    mov word ptr [bp + 11h], 1111h
    mov word ptr [bx + 11h], 1111h

    mov word ptr [bx + si + 1111h], 1111h
    mov word ptr [bx + di + 1111h], 1111h
    mov word ptr [bp + si + 1111h], 1111h
    mov word ptr [bp + di + 1111h], 1111h

    mov word ptr [si + 1111h], 1111h
    mov word ptr [di + 1111h], 1111h
    mov word ptr [bp + 1111h], 1111h
    mov word ptr [bx + 1111h], 1111h

    ;; tasm compiles this to scenario 3
    ;; mov ax, 1111h
    ;; mov cx, 1111h
    ;; mov dx, 1111h
    ;; mov bx, 1111h

    ;; mov sp, 1111h
    ;; mov bp, 1111h
    ;; mov si, 1111h
    ;; mov di, 1111h

end start