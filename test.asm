.model tiny

.code
org 100h

start:
    ;; mov scenario 1
    ;; d 0
    mov al, byte ptr [bx + si]
    mov al, byte ptr [bx + di]
    mov al, byte ptr [bp + si]
    mov al, byte ptr [bp + di]
    mov al, byte ptr [si]
    mov al, byte ptr [di]
    ;; mov al, byte ptr ds:0002h ;; scenario 4
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
    mov ax, word ptr [bx + si]
    mov ax, word ptr [bx + di]
    mov ax, word ptr [bp + si]
    mov ax, word ptr [bp + di]
    mov ax, word ptr [si]
    mov ax, word ptr [di]
    ;; mov ax, word ptr ds:0002h ;; scenario 4
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
    mov di, ax
    mov di, cx
    mov di, dx
    mov di, bx
    mov di, sp
    mov di, bp
    mov di, si
    mov di, di
    ;; d 1
    mov byte ptr [bx + si], al
    mov byte ptr [bx + di], al
    mov byte ptr [bp + si], al
    mov byte ptr [bp + di], al
    mov byte ptr [si], al
    mov byte ptr [di], al
    mov byte ptr ds:0002h, al
    mov byte ptr [bx], al
    mov byte ptr [bx + si + 11h], al
    mov byte ptr [bx + di + 11h], al
    mov byte ptr [bp + si + 11h], al
    mov byte ptr [bp + di + 11h], al
    mov byte ptr [si + 11h], al
    mov byte ptr [di + 11h], al
    mov byte ptr [bp + 11h], al
    mov byte ptr [bx + 11h], al
    mov byte ptr [bx + si + 1111h], al
    mov byte ptr [bx + di + 1111h], al
    mov byte ptr [bp + si + 1111h], al
    mov byte ptr [bp + di + 1111h], al
    mov byte ptr [si + 1111h], al
    mov byte ptr [di + 1111h], al
    mov byte ptr [bp + 1111h], al
    mov byte ptr [bx + 1111h], al
    mov al, al
    mov cl, al
    mov dl, al
    mov bl, al
    mov ah, al
    mov ch, al
    mov dh, al
    mov bh, al
    mov byte ptr [bx + si], cl
    mov byte ptr [bx + di], cl
    mov byte ptr [bp + si], cl
    mov byte ptr [bp + di], cl
    mov byte ptr [si], cl
    mov byte ptr [di], cl
    mov byte ptr ds:0002h, cl
    mov byte ptr [bx], cl
    mov byte ptr [bx + si + 11h], cl
    mov byte ptr [bx + di + 11h], cl
    mov byte ptr [bp + si + 11h], cl
    mov byte ptr [bp + di + 11h], cl
    mov byte ptr [si + 11h], cl
    mov byte ptr [di + 11h], cl
    mov byte ptr [bp + 11h], cl
    mov byte ptr [bx + 11h], cl
    mov byte ptr [bx + si + 1111h], cl
    mov byte ptr [bx + di + 1111h], cl
    mov byte ptr [bp + si + 1111h], cl
    mov byte ptr [bp + di + 1111h], cl
    mov byte ptr [si + 1111h], cl
    mov byte ptr [di + 1111h], cl
    mov byte ptr [bp + 1111h], cl
    mov byte ptr [bx + 1111h], cl
    mov al, cl
    mov cl, cl
    mov dl, cl
    mov bl, cl
    mov ah, cl
    mov ch, cl
    mov dh, cl
    mov bh, cl
    mov byte ptr [bx + si], dl
    mov byte ptr [bx + di], dl
    mov byte ptr [bp + si], dl
    mov byte ptr [bp + di], dl
    mov byte ptr [si], dl
    mov byte ptr [di], dl
    mov byte ptr ds:0002h, dl
    mov byte ptr [bx], dl
    mov byte ptr [bx + si + 11h], dl
    mov byte ptr [bx + di + 11h], dl
    mov byte ptr [bp + si + 11h], dl
    mov byte ptr [bp + di + 11h], dl
    mov byte ptr [si + 11h], dl
    mov byte ptr [di + 11h], dl
    mov byte ptr [bp + 11h], dl
    mov byte ptr [bx + 11h], dl
    mov byte ptr [bx + si + 1111h], dl
    mov byte ptr [bx + di + 1111h], dl
    mov byte ptr [bp + si + 1111h], dl
    mov byte ptr [bp + di + 1111h], dl
    mov byte ptr [si + 1111h], dl
    mov byte ptr [di + 1111h], dl
    mov byte ptr [bp + 1111h], dl
    mov byte ptr [bx + 1111h], dl
    mov al, dl
    mov cl, dl
    mov dl, dl
    mov bl, dl
    mov ah, dl
    mov ch, dl
    mov dh, dl
    mov bh, dl
    mov byte ptr [bx + si], bl
    mov byte ptr [bx + di], bl
    mov byte ptr [bp + si], bl
    mov byte ptr [bp + di], bl
    mov byte ptr [si], bl
    mov byte ptr [di], bl
    mov byte ptr ds:0002h, bl
    mov byte ptr [bx], bl
    mov byte ptr [bx + si + 11h], bl
    mov byte ptr [bx + di + 11h], bl
    mov byte ptr [bp + si + 11h], bl
    mov byte ptr [bp + di + 11h], bl
    mov byte ptr [si + 11h], bl
    mov byte ptr [di + 11h], bl
    mov byte ptr [bp + 11h], bl
    mov byte ptr [bx + 11h], bl
    mov byte ptr [bx + si + 1111h], bl
    mov byte ptr [bx + di + 1111h], bl
    mov byte ptr [bp + si + 1111h], bl
    mov byte ptr [bp + di + 1111h], bl
    mov byte ptr [si + 1111h], bl
    mov byte ptr [di + 1111h], bl
    mov byte ptr [bp + 1111h], bl
    mov byte ptr [bx + 1111h], bl
    mov al, bl
    mov cl, bl
    mov dl, bl
    mov bl, bl
    mov ah, bl
    mov ch, bl
    mov dh, bl
    mov bh, bl
    mov byte ptr [bx + si], ah
    mov byte ptr [bx + di], ah
    mov byte ptr [bp + si], ah
    mov byte ptr [bp + di], ah
    mov byte ptr [si], ah
    mov byte ptr [di], ah
    mov byte ptr ds:0002h, ah
    mov byte ptr [bx], ah
    mov byte ptr [bx + si + 11h], ah
    mov byte ptr [bx + di + 11h], ah
    mov byte ptr [bp + si + 11h], ah
    mov byte ptr [bp + di + 11h], ah
    mov byte ptr [si + 11h], ah
    mov byte ptr [di + 11h], ah
    mov byte ptr [bp + 11h], ah
    mov byte ptr [bx + 11h], ah
    mov byte ptr [bx + si + 1111h], ah
    mov byte ptr [bx + di + 1111h], ah
    mov byte ptr [bp + si + 1111h], ah
    mov byte ptr [bp + di + 1111h], ah
    mov byte ptr [si + 1111h], ah
    mov byte ptr [di + 1111h], ah
    mov byte ptr [bp + 1111h], ah
    mov byte ptr [bx + 1111h], ah
    mov al, ah
    mov cl, ah
    mov dl, ah
    mov bl, ah
    mov ah, ah
    mov ch, ah
    mov dh, ah
    mov bh, ah
    mov byte ptr [bx + si], ch
    mov byte ptr [bx + di], ch
    mov byte ptr [bp + si], ch
    mov byte ptr [bp + di], ch
    mov byte ptr [si], ch
    mov byte ptr [di], ch
    mov byte ptr ds:0002h, ch
    mov byte ptr [bx], ch
    mov byte ptr [bx + si + 11h], ch
    mov byte ptr [bx + di + 11h], ch
    mov byte ptr [bp + si + 11h], ch
    mov byte ptr [bp + di + 11h], ch
    mov byte ptr [si + 11h], ch
    mov byte ptr [di + 11h], ch
    mov byte ptr [bp + 11h], ch
    mov byte ptr [bx + 11h], ch
    mov byte ptr [bx + si + 1111h], ch
    mov byte ptr [bx + di + 1111h], ch
    mov byte ptr [bp + si + 1111h], ch
    mov byte ptr [bp + di + 1111h], ch
    mov byte ptr [si + 1111h], ch
    mov byte ptr [di + 1111h], ch
    mov byte ptr [bp + 1111h], ch
    mov byte ptr [bx + 1111h], ch
    mov al, ch
    mov cl, ch
    mov dl, ch
    mov bl, ch
    mov ah, ch
    mov ch, ch
    mov dh, ch
    mov bh, ch
    mov byte ptr [bx + si], dh
    mov byte ptr [bx + di], dh
    mov byte ptr [bp + si], dh
    mov byte ptr [bp + di], dh
    mov byte ptr [si], dh
    mov byte ptr [di], dh
    mov byte ptr ds:0002h, dh
    mov byte ptr [bx], dh
    mov byte ptr [bx + si + 11h], dh
    mov byte ptr [bx + di + 11h], dh
    mov byte ptr [bp + si + 11h], dh
    mov byte ptr [bp + di + 11h], dh
    mov byte ptr [si + 11h], dh
    mov byte ptr [di + 11h], dh
    mov byte ptr [bp + 11h], dh
    mov byte ptr [bx + 11h], dh
    mov byte ptr [bx + si + 1111h], dh
    mov byte ptr [bx + di + 1111h], dh
    mov byte ptr [bp + si + 1111h], dh
    mov byte ptr [bp + di + 1111h], dh
    mov byte ptr [si + 1111h], dh
    mov byte ptr [di + 1111h], dh
    mov byte ptr [bp + 1111h], dh
    mov byte ptr [bx + 1111h], dh
    mov al, dh
    mov cl, dh
    mov dl, dh
    mov bl, dh
    mov ah, dh
    mov ch, dh
    mov dh, dh
    mov bh, dh
    mov byte ptr [bx + si], bh
    mov byte ptr [bx + di], bh
    mov byte ptr [bp + si], bh
    mov byte ptr [bp + di], bh
    mov byte ptr [si], bh
    mov byte ptr [di], bh
    mov byte ptr ds:0002h, bh
    mov byte ptr [bx], bh
    mov byte ptr [bx + si + 11h], bh
    mov byte ptr [bx + di + 11h], bh
    mov byte ptr [bp + si + 11h], bh
    mov byte ptr [bp + di + 11h], bh
    mov byte ptr [si + 11h], bh
    mov byte ptr [di + 11h], bh
    mov byte ptr [bp + 11h], bh
    mov byte ptr [bx + 11h], bh
    mov byte ptr [bx + si + 1111h], bh
    mov byte ptr [bx + di + 1111h], bh
    mov byte ptr [bp + si + 1111h], bh
    mov byte ptr [bp + di + 1111h], bh
    mov byte ptr [si + 1111h], bh
    mov byte ptr [di + 1111h], bh
    mov byte ptr [bp + 1111h], bh
    mov byte ptr [bx + 1111h], bh
    mov al, bh
    mov cl, bh
    mov dl, bh
    mov bl, bh
    mov ah, bh
    mov ch, bh
    mov dh, bh
    mov bh, bh
    mov word ptr [bx + si], ax
    mov word ptr [bx + di], ax
    mov word ptr [bp + si], ax
    mov word ptr [bp + di], ax
    mov word ptr [si], ax
    mov word ptr [di], ax
    mov word ptr ds:0002h, ax
    mov word ptr [bx], ax
    mov word ptr [bx + si + 11h], ax
    mov word ptr [bx + di + 11h], ax
    mov word ptr [bp + si + 11h], ax
    mov word ptr [bp + di + 11h], ax
    mov word ptr [si + 11h], ax
    mov word ptr [di + 11h], ax
    mov word ptr [bp + 11h], ax
    mov word ptr [bx + 11h], ax
    mov word ptr [bx + si + 1111h], ax
    mov word ptr [bx + di + 1111h], ax
    mov word ptr [bp + si + 1111h], ax
    mov word ptr [bp + di + 1111h], ax
    mov word ptr [si + 1111h], ax
    mov word ptr [di + 1111h], ax
    mov word ptr [bp + 1111h], ax
    mov word ptr [bx + 1111h], ax
    mov ax, ax
    mov cx, ax
    mov dx, ax
    mov bx, ax
    mov sp, ax
    mov bp, ax
    mov si, ax
    mov di, ax
    mov word ptr [bx + si], cx
    mov word ptr [bx + di], cx
    mov word ptr [bp + si], cx
    mov word ptr [bp + di], cx
    mov word ptr [si], cx
    mov word ptr [di], cx
    mov word ptr ds:0002h, cx
    mov word ptr [bx], cx
    mov word ptr [bx + si + 11h], cx
    mov word ptr [bx + di + 11h], cx
    mov word ptr [bp + si + 11h], cx
    mov word ptr [bp + di + 11h], cx
    mov word ptr [si + 11h], cx
    mov word ptr [di + 11h], cx
    mov word ptr [bp + 11h], cx
    mov word ptr [bx + 11h], cx
    mov word ptr [bx + si + 1111h], cx
    mov word ptr [bx + di + 1111h], cx
    mov word ptr [bp + si + 1111h], cx
    mov word ptr [bp + di + 1111h], cx
    mov word ptr [si + 1111h], cx
    mov word ptr [di + 1111h], cx
    mov word ptr [bp + 1111h], cx
    mov word ptr [bx + 1111h], cx
    mov ax, cx
    mov cx, cx
    mov dx, cx
    mov bx, cx
    mov sp, cx
    mov bp, cx
    mov si, cx
    mov di, cx
    mov word ptr [bx + si], dx
    mov word ptr [bx + di], dx
    mov word ptr [bp + si], dx
    mov word ptr [bp + di], dx
    mov word ptr [si], dx
    mov word ptr [di], dx
    mov word ptr ds:0002h, dx
    mov word ptr [bx], dx
    mov word ptr [bx + si + 11h], dx
    mov word ptr [bx + di + 11h], dx
    mov word ptr [bp + si + 11h], dx
    mov word ptr [bp + di + 11h], dx
    mov word ptr [si + 11h], dx
    mov word ptr [di + 11h], dx
    mov word ptr [bp + 11h], dx
    mov word ptr [bx + 11h], dx
    mov word ptr [bx + si + 1111h], dx
    mov word ptr [bx + di + 1111h], dx
    mov word ptr [bp + si + 1111h], dx
    mov word ptr [bp + di + 1111h], dx
    mov word ptr [si + 1111h], dx
    mov word ptr [di + 1111h], dx
    mov word ptr [bp + 1111h], dx
    mov word ptr [bx + 1111h], dx
    mov ax, dx
    mov cx, dx
    mov dx, dx
    mov bx, dx
    mov sp, dx
    mov bp, dx
    mov si, dx
    mov di, dx
    mov word ptr [bx + si], bx
    mov word ptr [bx + di], bx
    mov word ptr [bp + si], bx
    mov word ptr [bp + di], bx
    mov word ptr [si], bx
    mov word ptr [di], bx
    mov word ptr ds:0002h, bx
    mov word ptr [bx], bx
    mov word ptr [bx + si + 11h], bx
    mov word ptr [bx + di + 11h], bx
    mov word ptr [bp + si + 11h], bx
    mov word ptr [bp + di + 11h], bx
    mov word ptr [si + 11h], bx
    mov word ptr [di + 11h], bx
    mov word ptr [bp + 11h], bx
    mov word ptr [bx + 11h], bx
    mov word ptr [bx + si + 1111h], bx
    mov word ptr [bx + di + 1111h], bx
    mov word ptr [bp + si + 1111h], bx
    mov word ptr [bp + di + 1111h], bx
    mov word ptr [si + 1111h], bx
    mov word ptr [di + 1111h], bx
    mov word ptr [bp + 1111h], bx
    mov word ptr [bx + 1111h], bx
    mov ax, bx
    mov cx, bx
    mov dx, bx
    mov bx, bx
    mov sp, bx
    mov bp, bx
    mov si, bx
    mov di, bx
    mov word ptr [bx + si], sp
    mov word ptr [bx + di], sp
    mov word ptr [bp + si], sp
    mov word ptr [bp + di], sp
    mov word ptr [si], sp
    mov word ptr [di], sp
    mov word ptr ds:0002h, sp
    mov word ptr [bx], sp
    mov word ptr [bx + si + 11h], sp
    mov word ptr [bx + di + 11h], sp
    mov word ptr [bp + si + 11h], sp
    mov word ptr [bp + di + 11h], sp
    mov word ptr [si + 11h], sp
    mov word ptr [di + 11h], sp
    mov word ptr [bp + 11h], sp
    mov word ptr [bx + 11h], sp
    mov word ptr [bx + si + 1111h], sp
    mov word ptr [bx + di + 1111h], sp
    mov word ptr [bp + si + 1111h], sp
    mov word ptr [bp + di + 1111h], sp
    mov word ptr [si + 1111h], sp
    mov word ptr [di + 1111h], sp
    mov word ptr [bp + 1111h], sp
    mov word ptr [bx + 1111h], sp
    mov ax, sp
    mov cx, sp
    mov dx, sp
    mov bx, sp
    mov sp, sp
    mov bp, sp
    mov si, sp
    mov di, sp
    mov word ptr [bx + si], bp
    mov word ptr [bx + di], bp
    mov word ptr [bp + si], bp
    mov word ptr [bp + di], bp
    mov word ptr [si], bp
    mov word ptr [di], bp
    mov word ptr ds:0002h, bp
    mov word ptr [bx], bp
    mov word ptr [bx + si + 11h], bp
    mov word ptr [bx + di + 11h], bp
    mov word ptr [bp + si + 11h], bp
    mov word ptr [bp + di + 11h], bp
    mov word ptr [si + 11h], bp
    mov word ptr [di + 11h], bp
    mov word ptr [bp + 11h], bp
    mov word ptr [bx + 11h], bp
    mov word ptr [bx + si + 1111h], bp
    mov word ptr [bx + di + 1111h], bp
    mov word ptr [bp + si + 1111h], bp
    mov word ptr [bp + di + 1111h], bp
    mov word ptr [si + 1111h], bp
    mov word ptr [di + 1111h], bp
    mov word ptr [bp + 1111h], bp
    mov word ptr [bx + 1111h], bp
    mov ax, bp
    mov cx, bp
    mov dx, bp
    mov bx, bp
    mov sp, bp
    mov bp, bp
    mov si, bp
    mov di, bp
    mov word ptr [bx + si], si
    mov word ptr [bx + di], si
    mov word ptr [bp + si], si
    mov word ptr [bp + di], si
    mov word ptr [si], si
    mov word ptr [di], si
    mov word ptr ds:0002h, si
    mov word ptr [bx], si
    mov word ptr [bx + si + 11h], si
    mov word ptr [bx + di + 11h], si
    mov word ptr [bp + si + 11h], si
    mov word ptr [bp + di + 11h], si
    mov word ptr [si + 11h], si
    mov word ptr [di + 11h], si
    mov word ptr [bp + 11h], si
    mov word ptr [bx + 11h], si
    mov word ptr [bx + si + 1111h], si
    mov word ptr [bx + di + 1111h], si
    mov word ptr [bp + si + 1111h], si
    mov word ptr [bp + di + 1111h], si
    mov word ptr [si + 1111h], si
    mov word ptr [di + 1111h], si
    mov word ptr [bp + 1111h], si
    mov word ptr [bx + 1111h], si
    mov ax, si
    mov cx, si
    mov dx, si
    mov bx, si
    mov sp, si
    mov bp, si
    mov si, si
    mov di, si
    mov word ptr [bx + si], di
    mov word ptr [bx + di], di
    mov word ptr [bp + si], di
    mov word ptr [bp + di], di
    mov word ptr [si], di
    mov word ptr [di], di
    mov word ptr ds:0002h, di
    mov word ptr [bx], di
    mov word ptr [bx + si + 11h], di
    mov word ptr [bx + di + 11h], di
    mov word ptr [bp + si + 11h], di
    mov word ptr [bp + di + 11h], di
    mov word ptr [si + 11h], di
    mov word ptr [di + 11h], di
    mov word ptr [bp + 11h], di
    mov word ptr [bx + 11h], di
    mov word ptr [bx + si + 1111h], di
    mov word ptr [bx + di + 1111h], di
    mov word ptr [bp + si + 1111h], di
    mov word ptr [bp + di + 1111h], di
    mov word ptr [si + 1111h], di
    mov word ptr [di + 1111h], di
    mov word ptr [bp + 1111h], di
    mov word ptr [bx + 1111h], di
    mov ax, di
    mov cx, di
    mov dx, di
    mov bx, di
    mov sp, di
    mov bp, di
    mov si, di
    mov di, di

end start