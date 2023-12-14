.model small
.stack 100h
.386

@INCLUDE("mov.asm")
@INCLUDE("opcodes.asm")
@INCLUDE("lib.asm")

.data
    mov_str db "mov", 13, 10, '$'
    out_str db "out", 13, 10, '$'
    not_str db "not", 13, 10, '$'
    rcr_str db "rcr", 13, 10, '$'
    xlat_str db "xlat", 13, 10, '$'
    unsupported_str db "nil", 13, 10, '$'

    al_reg db "al", '$'
    cl_reg db "cl", '$'
    dl_reg db "dl", '$'
    bl_reg db "bl", '$'
    ah_reg db "ah", '$'
    ch_reg db "ch", '$'
    dh_reg db "dh", '$'
    bh_reg db "bh", '$'
    ax_reg db "ax", '$'
    cx_reg db "cx", '$'
    dx_reg db "dx", '$'
    bx_reg db "bx", '$'
    sp_reg db "sp", '$'
    bp_reg db "bp", '$'
    si_reg db "si", '$'
    di_reg db "di", '$'

    w_val db 0

    input_filename db "test.com", 0, '$'
    input_filehandle dw 0
    input_buffer db 255 dup(0), '$'
    input_pointer dw 0

    error_msg db "something went wrong", 13, 10, '$'

    @DECLARE_OPCODES
.code

@DECL_PROC(open_input_file,
    ;; Open input file for read
    mov ax\, 3d00h
    mov dx\, offset input_filename
    int 21h

    jc handle_error

    mov input_filehandle\, ax
)

@DECL_PROC(read_input_file,
    ;; reading input file to the buffer
    mov ax\, 3f00h
    mov bx\, input_filehandle
    mov cx\, 255
    mov dx\, offset input_buffer
    int 21h

    cmp al\, 0
    je exit
)

@DECL_PROC(retrieve_next_byte,
    ;; retrieving next byte from input file
    mov bx\, offset input_buffer
    add bx\, input_pointer
    mov al\, [bx]

    inc input_pointer

    cmp input_pointer\, 256
    jne continue

    @PUSH_ALL
    call read_input_file
    @POP_ALL

    mov input_pointer\, 0

    continue:
)

@MACRO(@MASK_VALUE, (@VALUE, @MASK),
    and @VALUE\, @MASK
)

process_mov:
    @PRINT_STR(offset mov_str)

    jmp inst_loop

process_out_0:
    out_0_scenario:
        @PRINT_STR(offset out_str)
        @MASK_VALUE(al, 00000001b)
        mov w_val, al

        call retrieve_next_byte

        @PRINT_BYTE(al)

        @PRINT_STR(offset ax_reg)

        jmp out_continue
    out_1_scenario:
        @PRINT_STR(offset out_str)
        @MASK_VALUE(al, 00000001b)
        mov w_val, al

        call retrieve_next_byte

        jmp out_continue

    out_continue:
    jmp inst_loop

# w reg
# 0'000 "al"
# 0'001 "cl"
# 0'010 "dl"
# 0'011 "bl"
# 0'100 "ah"
# 0'101 "ch"
# 0'110 "dh"
# 0'111 "bh"
# 1'000 "ax"
# 1'001 "cx"
# 1'010 "dx"
# 1'011 "bx"
# 1'100 "sp"
# 1'101 "bp"
# 1'110 "si"
# 1'111 "di"

process_not:
    @PRINT_STR(offset not_str)

    call retrieve_next_byte # mod 010 r/m [poslinkis]

    @MASK_VALUE(al, 00000001b)

    not_w_0_scenario:
        jmp not_continue
    not_w_1_scenario:
        jmp not_continue

    not_continue:
    jmp inst_loop

process_rcr:
    @PRINT_STR(offset rcr_str)

    jmp inst_loop

process_xlat:
    @PRINT_STR(offset xlat_str)

    jmp inst_loop

process_unsupported:
    @PRINT_STR(offset unsupported_str)

    jmp inst_loop

exit:
    @EXIT(0)

handle_error:
    @EXIT(1)

@MACRO(@PRINT_BYTE, (@BYTE),
    ;; print byte\, from @BYTE
    mov ah\, 02h
    mov dl\, @BYTE
    int 21h
)

start:
    mov dx, @data
    mov ds, dx

    call open_input_file
    call read_input_file

    inst_loop:
        call retrieve_next_byte

        xor bx, bx
        mov bl, al
        shl bx, 1
        add bx, offset OP_00000000

        jmp [bx]

    jmp exit
end start
