model tiny
.code
.386
org 0100h

start:
    not ax
    not bx
    not dx
    not si

    out 60, al

end start