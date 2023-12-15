.model tiny

.code
org 100h

start:
    ;; mod 00
    not byte ptr [bx + si]
    not byte ptr [bx + di]
    not byte ptr [bp + si]
    not byte ptr [bp + di]
    not byte ptr [bx + si]
    not byte ptr [bx + di]
    not byte ptr [bp + si]
    not byte ptr [bp + di]

    not byte ptr [si]
    not byte ptr [di]
    not byte ptr ds:0002h
    not byte ptr [bx]

    ;; mod 01
    not byte ptr [bx + si + 11h]
    not byte ptr [bx + di + 11h]
    not byte ptr [bp + si + 11h]
    not byte ptr [bp + di + 11h]

    not byte ptr [si + 11h]
    not byte ptr [di + 11h]
    not byte ptr [bp + 11h]
    not byte ptr [bx + 11h]
    
    ;; mod 10
    not byte ptr [bx + si + 1111h]
    not byte ptr [bx + di + 1111h]
    not byte ptr [bp + si + 1111h]
    not byte ptr [bp + di + 1111h]

    not byte ptr [si + 1111h]
    not byte ptr [di + 1111h]
    not byte ptr [bp + 1111h]
    not byte ptr [bx + 1111h]

    ;; mod 11
    not al
    not cl
    not dl
    not bl

    not ah
    not ch
    not dh
    not bh

    not ax
    not cx
    not dx
    not bx

    not sp
    not bp
    not si
    not di

end start