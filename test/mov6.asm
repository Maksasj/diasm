.model tiny

.code
org 100h

start:
    ;; d 0
    mov es, word ptr [bx + si]
    mov es, word ptr [bx + di]
    mov es, word ptr [bp + si]
    mov es, word ptr [bp + di]
    mov es, word ptr [bx + si]
    mov es, word ptr [bx + di]
    mov es, word ptr [bp + si]
    mov es, word ptr [bp + di]
    mov es, word ptr [si]
    mov es, word ptr [di]
    mov es, word ptr ds:0002h
    mov es, word ptr [bx]
    mov es, word ptr [bx + si + 11h]
    mov es, word ptr [bx + di + 11h]
    mov es, word ptr [bp + si + 11h]
    mov es, word ptr [bp + di + 11h]
    mov es, word ptr [si + 11h]
    mov es, word ptr [di + 11h]
    mov es, word ptr [bp + 11h]
    mov es, word ptr [bx + 11h]
    mov es, word ptr [bx + si + 1111h]
    mov es, word ptr [bx + di + 1111h]
    mov es, word ptr [bp + si + 1111h]
    mov es, word ptr [bp + di + 1111h]
    mov es, word ptr [si + 1111h]
    mov es, word ptr [di + 1111h]
    mov es, word ptr [bp + 1111h]
    mov es, word ptr [bx + 1111h]
    mov es, ax
    mov es, cx
    mov es, dx
    mov es, bx
    mov es, sp
    mov es, bp
    mov es, si
    mov es, di
    mov ss, word ptr [bx + si]
    mov ss, word ptr [bx + di]
    mov ss, word ptr [bp + si]
    mov ss, word ptr [bp + di]
    mov ss, word ptr [bx + si]
    mov ss, word ptr [bx + di]
    mov ss, word ptr [bp + si]
    mov ss, word ptr [bp + di]
    mov ss, word ptr [si]
    mov ss, word ptr [di]
    mov ss, word ptr ds:0002h
    mov ss, word ptr [bx]
    mov ss, word ptr [bx + si + 11h]
    mov ss, word ptr [bx + di + 11h]
    mov ss, word ptr [bp + si + 11h]
    mov ss, word ptr [bp + di + 11h]
    mov ss, word ptr [si + 11h]
    mov ss, word ptr [di + 11h]
    mov ss, word ptr [bp + 11h]
    mov ss, word ptr [bx + 11h]
    mov ss, word ptr [bx + si + 1111h]
    mov ss, word ptr [bx + di + 1111h]
    mov ss, word ptr [bp + si + 1111h]
    mov ss, word ptr [bp + di + 1111h]
    mov ss, word ptr [si + 1111h]
    mov ss, word ptr [di + 1111h]
    mov ss, word ptr [bp + 1111h]
    mov ss, word ptr [bx + 1111h]
    mov ss, ax
    mov ss, cx
    mov ss, dx
    mov ss, bx
    mov ss, sp
    mov ss, bp
    mov ss, si
    mov ss, di
    mov ds, word ptr [bx + si]
    mov ds, word ptr [bx + di]
    mov ds, word ptr [bp + si]
    mov ds, word ptr [bp + di]
    mov ds, word ptr [bx + si]
    mov ds, word ptr [bx + di]
    mov ds, word ptr [bp + si]
    mov ds, word ptr [bp + di]
    mov ds, word ptr [si]
    mov ds, word ptr [di]
    mov ds, word ptr ds:0002h
    mov ds, word ptr [bx]
    mov ds, word ptr [bx + si + 11h]
    mov ds, word ptr [bx + di + 11h]
    mov ds, word ptr [bp + si + 11h]
    mov ds, word ptr [bp + di + 11h]
    mov ds, word ptr [si + 11h]
    mov ds, word ptr [di + 11h]
    mov ds, word ptr [bp + 11h]
    mov ds, word ptr [bx + 11h]
    mov ds, word ptr [bx + si + 1111h]
    mov ds, word ptr [bx + di + 1111h]
    mov ds, word ptr [bp + si + 1111h]
    mov ds, word ptr [bp + di + 1111h]
    mov ds, word ptr [si + 1111h]
    mov ds, word ptr [di + 1111h]
    mov ds, word ptr [bp + 1111h]
    mov ds, word ptr [bx + 1111h]
    mov ds, ax
    mov ds, cx
    mov ds, dx
    mov ds, bx
    mov ds, sp
    mov ds, bp
    mov ds, si
    mov ds, di

    ;; d 1
    mov word ptr [bx + si], es
    mov word ptr [bx + si], cs
    mov word ptr [bx + si], ss
    mov word ptr [bx + si], ds
    mov word ptr [bx + di], es
    mov word ptr [bx + di], cs
    mov word ptr [bx + di], ss
    mov word ptr [bx + di], ds
    mov word ptr [bp + si], es
    mov word ptr [bp + si], cs
    mov word ptr [bp + si], ss
    mov word ptr [bp + si], ds
    mov word ptr [bp + di], es
    mov word ptr [bp + di], cs
    mov word ptr [bp + di], ss
    mov word ptr [bp + di], ds
    mov word ptr [bx + si], es
    mov word ptr [bx + si], cs
    mov word ptr [bx + si], ss
    mov word ptr [bx + si], ds
    mov word ptr [bx + di], es
    mov word ptr [bx + di], cs
    mov word ptr [bx + di], ss
    mov word ptr [bx + di], ds
    mov word ptr [bp + si], es
    mov word ptr [bp + si], cs
    mov word ptr [bp + si], ss
    mov word ptr [bp + si], ds
    mov word ptr [bp + di], es
    mov word ptr [bp + di], cs
    mov word ptr [bp + di], ss
    mov word ptr [bp + di], ds
    mov word ptr [si], es
    mov word ptr [si], cs
    mov word ptr [si], ss
    mov word ptr [si], ds
    mov word ptr [di], es
    mov word ptr [di], cs
    mov word ptr [di], ss
    mov word ptr [di], ds
    mov word ptr ds:0002h, es
    mov word ptr ds:0002h, cs
    mov word ptr ds:0002h, ss
    mov word ptr ds:0002h, ds
    mov word ptr [bx], es
    mov word ptr [bx], cs
    mov word ptr [bx], ss
    mov word ptr [bx], ds
    mov word ptr [bx + si + 11h], es
    mov word ptr [bx + si + 11h], cs
    mov word ptr [bx + si + 11h], ss
    mov word ptr [bx + si + 11h], ds
    mov word ptr [bx + di + 11h], es
    mov word ptr [bx + di + 11h], cs
    mov word ptr [bx + di + 11h], ss
    mov word ptr [bx + di + 11h], ds
    mov word ptr [bp + si + 11h], es
    mov word ptr [bp + si + 11h], cs
    mov word ptr [bp + si + 11h], ss
    mov word ptr [bp + si + 11h], ds
    mov word ptr [bp + di + 11h], es
    mov word ptr [bp + di + 11h], cs
    mov word ptr [bp + di + 11h], ss
    mov word ptr [bp + di + 11h], ds
    mov word ptr [si + 11h], es
    mov word ptr [si + 11h], cs
    mov word ptr [si + 11h], ss
    mov word ptr [si + 11h], ds
    mov word ptr [di + 11h], es
    mov word ptr [di + 11h], cs
    mov word ptr [di + 11h], ss
    mov word ptr [di + 11h], ds
    mov word ptr [bp + 11h], es
    mov word ptr [bp + 11h], cs
    mov word ptr [bp + 11h], ss
    mov word ptr [bp + 11h], ds
    mov word ptr [bx + 11h], es
    mov word ptr [bx + 11h], cs
    mov word ptr [bx + 11h], ss
    mov word ptr [bx + 11h], ds
    mov word ptr [bx + si + 1111h], es
    mov word ptr [bx + si + 1111h], cs
    mov word ptr [bx + si + 1111h], ss
    mov word ptr [bx + si + 1111h], ds
    mov word ptr [bx + di + 1111h], es
    mov word ptr [bx + di + 1111h], cs
    mov word ptr [bx + di + 1111h], ss
    mov word ptr [bx + di + 1111h], ds
    mov word ptr [bp + si + 1111h], es
    mov word ptr [bp + si + 1111h], cs
    mov word ptr [bp + si + 1111h], ss
    mov word ptr [bp + si + 1111h], ds
    mov word ptr [bp + di + 1111h], es
    mov word ptr [bp + di + 1111h], cs
    mov word ptr [bp + di + 1111h], ss
    mov word ptr [bp + di + 1111h], ds
    mov word ptr [si + 1111h], es
    mov word ptr [si + 1111h], cs
    mov word ptr [si + 1111h], ss
    mov word ptr [si + 1111h], ds
    mov word ptr [di + 1111h], es
    mov word ptr [di + 1111h], cs
    mov word ptr [di + 1111h], ss
    mov word ptr [di + 1111h], ds
    mov word ptr [bp + 1111h], es
    mov word ptr [bp + 1111h], cs
    mov word ptr [bp + 1111h], ss
    mov word ptr [bp + 1111h], ds
    mov word ptr [bx + 1111h], es
    mov word ptr [bx + 1111h], cs
    mov word ptr [bx + 1111h], ss
    mov word ptr [bx + 1111h], ds
    mov ax, es
    mov ax, cs
    mov ax, ss
    mov ax, ds
    mov cx, es
    mov cx, cs
    mov cx, ss
    mov cx, ds
    mov dx, es
    mov dx, cs
    mov dx, ss
    mov dx, ds
    mov bx, es
    mov bx, cs
    mov bx, ss
    mov bx, ds
    mov sp, es
    mov sp, cs
    mov sp, ss
    mov sp, ds
    mov bp, es
    mov bp, cs
    mov bp, ss
    mov bp, ds
    mov si, es
    mov si, cs
    mov si, ss
    mov si, ds
    mov di, es
    mov di, cs
    mov di, ss
    mov di, ds

end start