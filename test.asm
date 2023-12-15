.model tiny

.code
org 100h

start:
    ;; v 0
    ;; mod 00
    rcr byte ptr [bx + si], 1
    rcr byte ptr [bx + di], 1
    rcr byte ptr [bp + si], 1
    rcr byte ptr [bp + di], 1
    rcr byte ptr [bx + si], 1
    rcr byte ptr [bx + di], 1
    rcr byte ptr [bp + si], 1
    rcr byte ptr [bp + di], 1

    rcr byte ptr [si], 1
    rcr byte ptr [di], 1
    rcr byte ptr ds:0002h, 1
    rcr byte ptr [bx], 1

    ;; mod 01
    rcr byte ptr [bx + si + 11h], 1
    rcr byte ptr [bx + di + 11h], 1
    rcr byte ptr [bp + si + 11h], 1
    rcr byte ptr [bp + di + 11h], 1

    rcr byte ptr [si + 11h], 1
    rcr byte ptr [di + 11h], 1
    rcr byte ptr [bp + 11h], 1
    rcr byte ptr [bx + 11h], 1

    ;; mod 10
    rcr byte ptr [bx + si + 1111h], 1
    rcr byte ptr [bx + di + 1111h], 1
    rcr byte ptr [bp + si + 1111h], 1
    rcr byte ptr [bp + di + 1111h], 1

    rcr byte ptr [si + 1111h], 1
    rcr byte ptr [di + 1111h], 1
    rcr byte ptr [bp + 1111h], 1
    rcr byte ptr [bx + 1111h], 1

    ;; mod 11
    rcr al, 1
    rcr cl, 1
    rcr dl, 1
    rcr bl, 1

    rcr ah, 1
    rcr ch, 1
    rcr dh, 1
    rcr bh, 1

    rcr ax, 1
    rcr cx, 1
    rcr dx, 1
    rcr bx, 1

    rcr sp, 1
    rcr bp, 1
    rcr si, 1
    rcr di, 1

    ;; v 0
    ;; mod 00
    rcr byte ptr [bx + si], cl
    rcr byte ptr [bx + di], cl
    rcr byte ptr [bp + si], cl
    rcr byte ptr [bp + di], cl
    rcr byte ptr [bx + si], cl
    rcr byte ptr [bx + di], cl
    rcr byte ptr [bp + si], cl
    rcr byte ptr [bp + di], cl

    rcr byte ptr [si], cl
    rcr byte ptr [di], cl
    rcr byte ptr ds:0002h, cl
    rcr byte ptr [bx], cl

    ;; mod 01
    rcr byte ptr [bx + si + 11h], cl
    rcr byte ptr [bx + di + 11h], cl
    rcr byte ptr [bp + si + 11h], cl
    rcr byte ptr [bp + di + 11h], cl

    rcr byte ptr [si + 11h], cl
    rcr byte ptr [di + 11h], cl
    rcr byte ptr [bp + 11h], cl
    rcr byte ptr [bx + 11h], cl

    ;; mod 10
    rcr byte ptr [bx + si + 1111h], cl
    rcr byte ptr [bx + di + 1111h], cl
    rcr byte ptr [bp + si + 1111h], cl
    rcr byte ptr [bp + di + 1111h], cl

    rcr byte ptr [si + 1111h], cl
    rcr byte ptr [di + 1111h], cl
    rcr byte ptr [bp + 1111h], cl
    rcr byte ptr [bx + 1111h], cl

    ;; mod 11
    rcr al, cl
    rcr cl, cl
    rcr dl, cl
    rcr bl, cl

    rcr ah, cl
    rcr ch, cl
    rcr dh, cl
    rcr bh, cl

    rcr ax, cl
    rcr cx, cl
    rcr dx, cl
    rcr bx, cl

    rcr sp, cl
    rcr bp, cl
    rcr si, cl
    rcr di, cl

end start