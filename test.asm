.model tiny

.code
org 100h

start:
    ;; mov scenario 1
    mov al, byte ptr [bx + si]
    mov al, byte ptr [bx + di]
    mov al, byte ptr [bp + si]
    mov al, byte ptr [bp + di]
    mov al, byte ptr [bx + si]
    mov al, byte ptr [bx + di]
    mov al, byte ptr [bp + si]
    mov al, byte ptr [bp + di]
    mov al, byte ptr [si]
    mov al, byte ptr [di]
    mov al, byte ptr ds:0002h
    mov al, byte ptr [bx]
    mov al, byte ptr [bx + si + 11h]
    mov al, byte ptr [bx + di + 11h]
    mov al, byte ptr [bp + si + 11h]
    mov al, byte ptr [bp + di + 11h]
    mov al, byte ptr [si + 11h]
    mov al, byte ptr [di + 11h]
    mov al, byte ptr [bp + 11h]
    mov al, byte ptr [bx + 11h]
    mov al, byte ptr [bx + si + 1111h]
    mov al, byte ptr [bx + di + 1111h]
    mov al, byte ptr [bp + si + 1111h]
    mov al, byte ptr [bp + di + 1111h]
    mov al, byte ptr [si + 1111h]
    mov al, byte ptr [di + 1111h]
    mov al, byte ptr [bp + 1111h]
    mov al, byte ptr [bx + 1111h]
    mov al, al
    mov al, cl
    mov al, dl
    mov al, bl
    mov al, ah
    mov al, ch
    mov al, dh
    mov al, bh
    ;; mov al, ax
    ;; mov al, cx
    ;; mov al, dx
    ;; mov al, bx
    ;; mov al, sp
    ;; mov al, bp
    ;; mov al, si
    ;; mov al, di
    mov cl, byte ptr [bx + si]
    mov cl, byte ptr [bx + di]
    mov cl, byte ptr [bp + si]
    mov cl, byte ptr [bp + di]
    mov cl, byte ptr [bx + si]
    mov cl, byte ptr [bx + di]
    mov cl, byte ptr [bp + si]
    mov cl, byte ptr [bp + di]
    mov cl, byte ptr [si]
    mov cl, byte ptr [di]
    mov cl, byte ptr ds:0002h
    mov cl, byte ptr [bx]
    mov cl, byte ptr [bx + si + 11h]
    mov cl, byte ptr [bx + di + 11h]
    mov cl, byte ptr [bp + si + 11h]
    mov cl, byte ptr [bp + di + 11h]
    mov cl, byte ptr [si + 11h]
    mov cl, byte ptr [di + 11h]
    mov cl, byte ptr [bp + 11h]
    mov cl, byte ptr [bx + 11h]
    mov cl, byte ptr [bx + si + 1111h]
    mov cl, byte ptr [bx + di + 1111h]
    mov cl, byte ptr [bp + si + 1111h]
    mov cl, byte ptr [bp + di + 1111h]
    mov cl, byte ptr [si + 1111h]
    mov cl, byte ptr [di + 1111h]
    mov cl, byte ptr [bp + 1111h]
    mov cl, byte ptr [bx + 1111h]
    mov cl, al
    mov cl, cl
    mov cl, dl
    mov cl, bl
    mov cl, ah
    mov cl, ch
    mov cl, dh
    mov cl, bh
    ;; mov cl, ax
    ;; mov cl, cx
    ;; mov cl, dx
    ;; mov cl, bx
    ;; mov cl, sp
    ;; mov cl, bp
    ;; mov cl, si
    ;; mov cl, di
    mov dl, byte ptr [bx + si]
    mov dl, byte ptr [bx + di]
    mov dl, byte ptr [bp + si]
    mov dl, byte ptr [bp + di]
    mov dl, byte ptr [bx + si]
    mov dl, byte ptr [bx + di]
    mov dl, byte ptr [bp + si]
    mov dl, byte ptr [bp + di]
    mov dl, byte ptr [si]
    mov dl, byte ptr [di]
    mov dl, byte ptr ds:0002h
    mov dl, byte ptr [bx]
    mov dl, byte ptr [bx + si + 11h]
    mov dl, byte ptr [bx + di + 11h]
    mov dl, byte ptr [bp + si + 11h]
    mov dl, byte ptr [bp + di + 11h]
    mov dl, byte ptr [si + 11h]
    mov dl, byte ptr [di + 11h]
    mov dl, byte ptr [bp + 11h]
    mov dl, byte ptr [bx + 11h]
    mov dl, byte ptr [bx + si + 1111h]
    mov dl, byte ptr [bx + di + 1111h]
    mov dl, byte ptr [bp + si + 1111h]
    mov dl, byte ptr [bp + di + 1111h]
    mov dl, byte ptr [si + 1111h]
    mov dl, byte ptr [di + 1111h]
    mov dl, byte ptr [bp + 1111h]
    mov dl, byte ptr [bx + 1111h]
    mov dl, al
    mov dl, cl
    mov dl, dl
    mov dl, bl
    mov dl, ah
    mov dl, ch
    mov dl, dh
    mov dl, bh
    ;; mov dl, ax
    ;; mov dl, cx
    ;; mov dl, dx
    ;; mov dl, bx
    ;; mov dl, sp
    ;; mov dl, bp
    ;; mov dl, si
    ;; mov dl, di
    mov bl, byte ptr [bx + si]
    mov bl, byte ptr [bx + di]
    mov bl, byte ptr [bp + si]
    mov bl, byte ptr [bp + di]
    mov bl, byte ptr [bx + si]
    mov bl, byte ptr [bx + di]
    mov bl, byte ptr [bp + si]
    mov bl, byte ptr [bp + di]
    mov bl, byte ptr [si]
    mov bl, byte ptr [di]
    mov bl, byte ptr ds:0002h
    mov bl, byte ptr [bx]
    mov bl, byte ptr [bx + si + 11h]
    mov bl, byte ptr [bx + di + 11h]
    mov bl, byte ptr [bp + si + 11h]
    mov bl, byte ptr [bp + di + 11h]
    mov bl, byte ptr [si + 11h]
    mov bl, byte ptr [di + 11h]
    mov bl, byte ptr [bp + 11h]
    mov bl, byte ptr [bx + 11h]
    mov bl, byte ptr [bx + si + 1111h]
    mov bl, byte ptr [bx + di + 1111h]
    mov bl, byte ptr [bp + si + 1111h]
    mov bl, byte ptr [bp + di + 1111h]
    mov bl, byte ptr [si + 1111h]
    mov bl, byte ptr [di + 1111h]
    mov bl, byte ptr [bp + 1111h]
    mov bl, byte ptr [bx + 1111h]
    mov bl, al
    mov bl, cl
    mov bl, dl
    mov bl, bl
    mov bl, ah
    mov bl, ch
    mov bl, dh
    mov bl, bh
    ;; mov bl, ax
    ;; mov bl, cx
    ;; mov bl, dx
    ;; mov bl, bx
    ;; mov bl, sp
    ;; mov bl, bp
    ;; mov bl, si
    ;; mov bl, di
    mov ah, byte ptr [bx + si]
    mov ah, byte ptr [bx + di]
    mov ah, byte ptr [bp + si]
    mov ah, byte ptr [bp + di]
    mov ah, byte ptr [bx + si]
    mov ah, byte ptr [bx + di]
    mov ah, byte ptr [bp + si]
    mov ah, byte ptr [bp + di]
    mov ah, byte ptr [si]
    mov ah, byte ptr [di]
    mov ah, byte ptr ds:0002h
    mov ah, byte ptr [bx]
    mov ah, byte ptr [bx + si + 11h]
    mov ah, byte ptr [bx + di + 11h]
    mov ah, byte ptr [bp + si + 11h]
    mov ah, byte ptr [bp + di + 11h]
    mov ah, byte ptr [si + 11h]
    mov ah, byte ptr [di + 11h]
    mov ah, byte ptr [bp + 11h]
    mov ah, byte ptr [bx + 11h]
    mov ah, byte ptr [bx + si + 1111h]
    mov ah, byte ptr [bx + di + 1111h]
    mov ah, byte ptr [bp + si + 1111h]
    mov ah, byte ptr [bp + di + 1111h]
    mov ah, byte ptr [si + 1111h]
    mov ah, byte ptr [di + 1111h]
    mov ah, byte ptr [bp + 1111h]
    mov ah, byte ptr [bx + 1111h]
    mov ah, al
    mov ah, cl
    mov ah, dl
    mov ah, bl
    mov ah, ah
    mov ah, ch
    mov ah, dh
    mov ah, bh
    ;; mov ah, ax
    ;; mov ah, cx
    ;; mov ah, dx
    ;; mov ah, bx
    ;; mov ah, sp
    ;; mov ah, bp
    ;; mov ah, si
    ;; mov ah, di
    mov ch, byte ptr [bx + si]
    mov ch, byte ptr [bx + di]
    mov ch, byte ptr [bp + si]
    mov ch, byte ptr [bp + di]
    mov ch, byte ptr [bx + si]
    mov ch, byte ptr [bx + di]
    mov ch, byte ptr [bp + si]
    mov ch, byte ptr [bp + di]
    mov ch, byte ptr [si]
    mov ch, byte ptr [di]
    mov ch, byte ptr ds:0002h
    mov ch, byte ptr [bx]
    mov ch, byte ptr [bx + si + 11h]
    mov ch, byte ptr [bx + di + 11h]
    mov ch, byte ptr [bp + si + 11h]
    mov ch, byte ptr [bp + di + 11h]
    mov ch, byte ptr [si + 11h]
    mov ch, byte ptr [di + 11h]
    mov ch, byte ptr [bp + 11h]
    mov ch, byte ptr [bx + 11h]
    mov ch, byte ptr [bx + si + 1111h]
    mov ch, byte ptr [bx + di + 1111h]
    mov ch, byte ptr [bp + si + 1111h]
    mov ch, byte ptr [bp + di + 1111h]
    mov ch, byte ptr [si + 1111h]
    mov ch, byte ptr [di + 1111h]
    mov ch, byte ptr [bp + 1111h]
    mov ch, byte ptr [bx + 1111h]
    mov ch, al
    mov ch, cl
    mov ch, dl
    mov ch, bl
    mov ch, ah
    mov ch, ch
    mov ch, dh
    mov ch, bh
    ;; mov ch, ax
    ;; mov ch, cx
    ;; mov ch, dx
    ;; mov ch, bx
    ;; mov ch, sp
    ;; mov ch, bp
    ;; mov ch, si
    ;; mov ch, di
    mov dh, byte ptr [bx + si]
    mov dh, byte ptr [bx + di]
    mov dh, byte ptr [bp + si]
    mov dh, byte ptr [bp + di]
    mov dh, byte ptr [bx + si]
    mov dh, byte ptr [bx + di]
    mov dh, byte ptr [bp + si]
    mov dh, byte ptr [bp + di]
    mov dh, byte ptr [si]
    mov dh, byte ptr [di]
    mov dh, byte ptr ds:0002h
    mov dh, byte ptr [bx]
    mov dh, byte ptr [bx + si + 11h]
    mov dh, byte ptr [bx + di + 11h]
    mov dh, byte ptr [bp + si + 11h]
    mov dh, byte ptr [bp + di + 11h]
    mov dh, byte ptr [si + 11h]
    mov dh, byte ptr [di + 11h]
    mov dh, byte ptr [bp + 11h]
    mov dh, byte ptr [bx + 11h]
    mov dh, byte ptr [bx + si + 1111h]
    mov dh, byte ptr [bx + di + 1111h]
    mov dh, byte ptr [bp + si + 1111h]
    mov dh, byte ptr [bp + di + 1111h]
    mov dh, byte ptr [si + 1111h]
    mov dh, byte ptr [di + 1111h]
    mov dh, byte ptr [bp + 1111h]
    mov dh, byte ptr [bx + 1111h]
    mov dh, al
    mov dh, cl
    mov dh, dl
    mov dh, bl
    mov dh, ah
    mov dh, ch
    mov dh, dh
    mov dh, bh
    ;; mov dh, ax
    ;; mov dh, cx
    ;; mov dh, dx
    ;; mov dh, bx
    ;; mov dh, sp
    ;; mov dh, bp
    ;; mov dh, si
    ;; mov dh, di
    mov bh, byte ptr [bx + si]
    mov bh, byte ptr [bx + di]
    mov bh, byte ptr [bp + si]
    mov bh, byte ptr [bp + di]
    mov bh, byte ptr [bx + si]
    mov bh, byte ptr [bx + di]
    mov bh, byte ptr [bp + si]
    mov bh, byte ptr [bp + di]
    mov bh, byte ptr [si]
    mov bh, byte ptr [di]
    mov bh, byte ptr ds:0002h
    mov bh, byte ptr [bx]
    mov bh, byte ptr [bx + si + 11h]
    mov bh, byte ptr [bx + di + 11h]
    mov bh, byte ptr [bp + si + 11h]
    mov bh, byte ptr [bp + di + 11h]
    mov bh, byte ptr [si + 11h]
    mov bh, byte ptr [di + 11h]
    mov bh, byte ptr [bp + 11h]
    mov bh, byte ptr [bx + 11h]
    mov bh, byte ptr [bx + si + 1111h]
    mov bh, byte ptr [bx + di + 1111h]
    mov bh, byte ptr [bp + si + 1111h]
    mov bh, byte ptr [bp + di + 1111h]
    mov bh, byte ptr [si + 1111h]
    mov bh, byte ptr [di + 1111h]
    mov bh, byte ptr [bp + 1111h]
    mov bh, byte ptr [bx + 1111h]
    mov bh, al
    mov bh, cl
    mov bh, dl
    mov bh, bl
    mov bh, ah
    mov bh, ch
    mov bh, dh
    mov bh, bh
    ;; mov bh, ax
    ;; mov bh, cx
    ;; mov bh, dx
    ;; mov bh, bx
    ;; mov bh, sp
    ;; mov bh, bp
    ;; mov bh, si
    ;; mov bh, di
    mov ax, word ptr [bx + si]
    mov ax, word ptr [bx + di]
    mov ax, word ptr [bp + si]
    mov ax, word ptr [bp + di]
    mov ax, word ptr [bx + si]
    mov ax, word ptr [bx + di]
    mov ax, word ptr [bp + si]
    mov ax, word ptr [bp + di]
    mov ax, word ptr [si]
    mov ax, word ptr [di]
    mov ax, word ptr ds:0002h
    mov ax, word ptr [bx]
    mov ax, word ptr [bx + si + 11h]
    mov ax, word ptr [bx + di + 11h]
    mov ax, word ptr [bp + si + 11h]
    mov ax, word ptr [bp + di + 11h]
    mov ax, word ptr [si + 11h]
    mov ax, word ptr [di + 11h]
    mov ax, word ptr [bp + 11h]
    mov ax, word ptr [bx + 11h]
    mov ax, word ptr [bx + si + 1111h]
    mov ax, word ptr [bx + di + 1111h]
    mov ax, word ptr [bp + si + 1111h]
    mov ax, word ptr [bp + di + 1111h]
    mov ax, word ptr [si + 1111h]
    mov ax, word ptr [di + 1111h]
    mov ax, word ptr [bp + 1111h]
    mov ax, word ptr [bx + 1111h]
    ;; mov ax, al
    ;; mov ax, cl
    ;; mov ax, dl
    ;; mov ax, bl
    ;; mov ax, ah
    ;; mov ax, ch
    ;; mov ax, dh
    ;; mov ax, bh
    mov ax, ax
    mov ax, cx
    mov ax, dx
    mov ax, bx
    mov ax, sp
    mov ax, bp
    mov ax, si
    mov ax, di
    mov cx, word ptr [bx + si]
    mov cx, word ptr [bx + di]
    mov cx, word ptr [bp + si]
    mov cx, word ptr [bp + di]
    mov cx, word ptr [bx + si]
    mov cx, word ptr [bx + di]
    mov cx, word ptr [bp + si]
    mov cx, word ptr [bp + di]
    mov cx, word ptr [si]
    mov cx, word ptr [di]
    mov cx, word ptr ds:0002h
    mov cx, word ptr [bx]
    mov cx, word ptr [bx + si + 11h]
    mov cx, word ptr [bx + di + 11h]
    mov cx, word ptr [bp + si + 11h]
    mov cx, word ptr [bp + di + 11h]
    mov cx, word ptr [si + 11h]
    mov cx, word ptr [di + 11h]
    mov cx, word ptr [bp + 11h]
    mov cx, word ptr [bx + 11h]
    mov cx, word ptr [bx + si + 1111h]
    mov cx, word ptr [bx + di + 1111h]
    mov cx, word ptr [bp + si + 1111h]
    mov cx, word ptr [bp + di + 1111h]
    mov cx, word ptr [si + 1111h]
    mov cx, word ptr [di + 1111h]
    mov cx, word ptr [bp + 1111h]
    mov cx, word ptr [bx + 1111h]
    ;; mov cx, al
    ;; mov cx, cl
    ;; mov cx, dl
    ;; mov cx, bl
    ;; mov cx, ah
    ;; mov cx, ch
    ;; mov cx, dh
    ;; mov cx, bh
    mov cx, ax
    mov cx, cx
    mov cx, dx
    mov cx, bx
    mov cx, sp
    mov cx, bp
    mov cx, si
    mov cx, di
    mov dx, word ptr [bx + si]
    mov dx, word ptr [bx + di]
    mov dx, word ptr [bp + si]
    mov dx, word ptr [bp + di]
    mov dx, word ptr [bx + si]
    mov dx, word ptr [bx + di]
    mov dx, word ptr [bp + si]
    mov dx, word ptr [bp + di]
    mov dx, word ptr [si]
    mov dx, word ptr [di]
    mov dx, word ptr ds:0002h
    mov dx, word ptr [bx]
    mov dx, word ptr [bx + si + 11h]
    mov dx, word ptr [bx + di + 11h]
    mov dx, word ptr [bp + si + 11h]
    mov dx, word ptr [bp + di + 11h]
    mov dx, word ptr [si + 11h]
    mov dx, word ptr [di + 11h]
    mov dx, word ptr [bp + 11h]
    mov dx, word ptr [bx + 11h]
    mov dx, word ptr [bx + si + 1111h]
    mov dx, word ptr [bx + di + 1111h]
    mov dx, word ptr [bp + si + 1111h]
    mov dx, word ptr [bp + di + 1111h]
    mov dx, word ptr [si + 1111h]
    mov dx, word ptr [di + 1111h]
    mov dx, word ptr [bp + 1111h]
    mov dx, word ptr [bx + 1111h]
    ;; mov dx, al
    ;; mov dx, cl
    ;; mov dx, dl
    ;; mov dx, bl
    ;; mov dx, ah
    ;; mov dx, ch
    ;; mov dx, dh
    ;; mov dx, bh
    mov dx, ax
    mov dx, cx
    mov dx, dx
    mov dx, bx
    mov dx, sp
    mov dx, bp
    mov dx, si
    mov dx, di
    mov bx, word ptr [bx + si]
    mov bx, word ptr [bx + di]
    mov bx, word ptr [bp + si]
    mov bx, word ptr [bp + di]
    mov bx, word ptr [bx + si]
    mov bx, word ptr [bx + di]
    mov bx, word ptr [bp + si]
    mov bx, word ptr [bp + di]
    mov bx, word ptr [si]
    mov bx, word ptr [di]
    mov bx, word ptr ds:0002h
    mov bx, word ptr [bx]
    mov bx, word ptr [bx + si + 11h]
    mov bx, word ptr [bx + di + 11h]
    mov bx, word ptr [bp + si + 11h]
    mov bx, word ptr [bp + di + 11h]
    mov bx, word ptr [si + 11h]
    mov bx, word ptr [di + 11h]
    mov bx, word ptr [bp + 11h]
    mov bx, word ptr [bx + 11h]
    mov bx, word ptr [bx + si + 1111h]
    mov bx, word ptr [bx + di + 1111h]
    mov bx, word ptr [bp + si + 1111h]
    mov bx, word ptr [bp + di + 1111h]
    mov bx, word ptr [si + 1111h]
    mov bx, word ptr [di + 1111h]
    mov bx, word ptr [bp + 1111h]
    mov bx, word ptr [bx + 1111h]
    ;; mov bx, al
    ;; mov bx, cl
    ;; mov bx, dl
    ;; mov bx, bl
    ;; mov bx, ah
    ;; mov bx, ch
    ;; mov bx, dh
    ;; mov bx, bh
    mov bx, ax
    mov bx, cx
    mov bx, dx
    mov bx, bx
    mov bx, sp
    mov bx, bp
    mov bx, si
    mov bx, di
    mov sp, word ptr [bx + si]
    mov sp, word ptr [bx + di]
    mov sp, word ptr [bp + si]
    mov sp, word ptr [bp + di]
    mov sp, word ptr [bx + si]
    mov sp, word ptr [bx + di]
    mov sp, word ptr [bp + si]
    mov sp, word ptr [bp + di]
    mov sp, word ptr [si]
    mov sp, word ptr [di]
    mov sp, word ptr ds:0002h
    mov sp, word ptr [bx]
    mov sp, word ptr [bx + si + 11h]
    mov sp, word ptr [bx + di + 11h]
    mov sp, word ptr [bp + si + 11h]
    mov sp, word ptr [bp + di + 11h]
    mov sp, word ptr [si + 11h]
    mov sp, word ptr [di + 11h]
    mov sp, word ptr [bp + 11h]
    mov sp, word ptr [bx + 11h]
    mov sp, word ptr [bx + si + 1111h]
    mov sp, word ptr [bx + di + 1111h]
    mov sp, word ptr [bp + si + 1111h]
    mov sp, word ptr [bp + di + 1111h]
    mov sp, word ptr [si + 1111h]
    mov sp, word ptr [di + 1111h]
    mov sp, word ptr [bp + 1111h]
    mov sp, word ptr [bx + 1111h]
    ;; mov sp, al
    ;; mov sp, cl
    ;; mov sp, dl
    ;; mov sp, bl
    ;; mov sp, ah
    ;; mov sp, ch
    ;; mov sp, dh
    ;; mov sp, bh
    mov sp, ax
    mov sp, cx
    mov sp, dx
    mov sp, bx
    mov sp, sp
    mov sp, bp
    mov sp, si
    mov sp, di
    mov bp, word ptr [bx + si]
    mov bp, word ptr [bx + di]
    mov bp, word ptr [bp + si]
    mov bp, word ptr [bp + di]
    mov bp, word ptr [bx + si]
    mov bp, word ptr [bx + di]
    mov bp, word ptr [bp + si]
    mov bp, word ptr [bp + di]
    mov bp, word ptr [si]
    mov bp, word ptr [di]
    mov bp, word ptr ds:0002h
    mov bp, word ptr [bx]
    mov bp, word ptr [bx + si + 11h]
    mov bp, word ptr [bx + di + 11h]
    mov bp, word ptr [bp + si + 11h]
    mov bp, word ptr [bp + di + 11h]
    mov bp, word ptr [si + 11h]
    mov bp, word ptr [di + 11h]
    mov bp, word ptr [bp + 11h]
    mov bp, word ptr [bx + 11h]
    mov bp, word ptr [bx + si + 1111h]
    mov bp, word ptr [bx + di + 1111h]
    mov bp, word ptr [bp + si + 1111h]
    mov bp, word ptr [bp + di + 1111h]
    mov bp, word ptr [si + 1111h]
    mov bp, word ptr [di + 1111h]
    mov bp, word ptr [bp + 1111h]
    mov bp, word ptr [bx + 1111h]
    ;; mov bp, al
    ;; mov bp, cl
    ;; mov bp, dl
    ;; mov bp, bl
    ;; mov bp, ah
    ;; mov bp, ch
    ;; mov bp, dh
    ;; mov bp, bh
    mov bp, ax
    mov bp, cx
    mov bp, dx
    mov bp, bx
    mov bp, sp
    mov bp, bp
    mov bp, si
    mov bp, di
    mov si, word ptr [bx + si]
    mov si, word ptr [bx + di]
    mov si, word ptr [bp + si]
    mov si, word ptr [bp + di]
    mov si, word ptr [bx + si]
    mov si, word ptr [bx + di]
    mov si, word ptr [bp + si]
    mov si, word ptr [bp + di]
    mov si, word ptr [si]
    mov si, word ptr [di]
    mov si, word ptr ds:0002h
    mov si, word ptr [bx]
    mov si, word ptr [bx + si + 11h]
    mov si, word ptr [bx + di + 11h]
    mov si, word ptr [bp + si + 11h]
    mov si, word ptr [bp + di + 11h]
    mov si, word ptr [si + 11h]
    mov si, word ptr [di + 11h]
    mov si, word ptr [bp + 11h]
    mov si, word ptr [bx + 11h]
    mov si, word ptr [bx + si + 1111h]
    mov si, word ptr [bx + di + 1111h]
    mov si, word ptr [bp + si + 1111h]
    mov si, word ptr [bp + di + 1111h]
    mov si, word ptr [si + 1111h]
    mov si, word ptr [di + 1111h]
    mov si, word ptr [bp + 1111h]
    mov si, word ptr [bx + 1111h]
    ;; mov si, al
    ;; mov si, cl
    ;; mov si, dl
    ;; mov si, bl
    ;; mov si, ah
    ;; mov si, ch
    ;; mov si, dh
    ;; mov si, bh
    mov si, ax
    mov si, cx
    mov si, dx
    mov si, bx
    mov si, sp
    mov si, bp
    mov si, si
    mov si, di
    mov di, word ptr [bx + si]
    mov di, word ptr [bx + di]
    mov di, word ptr [bp + si]
    mov di, word ptr [bp + di]
    mov di, word ptr [bx + si]
    mov di, word ptr [bx + di]
    mov di, word ptr [bp + si]
    mov di, word ptr [bp + di]
    mov di, word ptr [si]
    mov di, word ptr [di]
    mov di, word ptr ds:0002h
    mov di, word ptr [bx]
    mov di, word ptr [bx + si + 11h]
    mov di, word ptr [bx + di + 11h]
    mov di, word ptr [bp + si + 11h]
    mov di, word ptr [bp + di + 11h]
    mov di, word ptr [si + 11h]
    mov di, word ptr [di + 11h]
    mov di, word ptr [bp + 11h]
    mov di, word ptr [bx + 11h]
    mov di, word ptr [bx + si + 1111h]
    mov di, word ptr [bx + di + 1111h]
    mov di, word ptr [bp + si + 1111h]
    mov di, word ptr [bp + di + 1111h]
    mov di, word ptr [si + 1111h]
    mov di, word ptr [di + 1111h]
    mov di, word ptr [bp + 1111h]
    mov di, word ptr [bx + 1111h]
    ;; mov di, al
    ;; mov di, cl
    ;; mov di, dl
    ;; mov di, bl
    ;; mov di, ah
    ;; mov di, ch
    ;; mov di, dh
    ;; mov di, bh
    mov di, ax
    mov di, cx
    mov di, dx
    mov di, bx
    mov di, sp
    mov di, bp
    mov di, si
    mov di, di

end start