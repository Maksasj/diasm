.model small
.stack 100h
.386

.data
    msg db "Hello, Oskar !", 13, 10, '$'

.code

# 1 MOV  | 1000 10dw
    # 1000 1000
    # 1000 1001
    # 1000 1010
    # 1000 1011
# 2 MOV  | 1100 011w
    # 1100 0110
    # 1100 0111
# 3 MOV  | 1011 w reg
    # 1011 0reg
    # 1011 1reg
# 4 MOV  | 1010 000w
    # 1010 0000
    # 1010 0001
# 5 MOV  | 1010 001w
    # 1010 0010
    # 1010 0011
# 6 MOV  | 1000 11d0
    # 1000 0010
    # 1000 0010

# 1 OUT  | 1110 011w
# 2 OUT  | 1110 111w

# 1 NOT  | 1111 011w

# 1 RCR  | 1101 00vw

# 1 XLAT | 1101 0111

@MACRO(@MOV, (), )

start:
    mov dx, @data
    mov ds, dx

    mov ax, 10101100b

    mov cx, 09h
    mov ah, 09h
    mov dx, offset msg
    int 21h

    mov ah, 4ch
    mov al, 0
    int 21h

end start
