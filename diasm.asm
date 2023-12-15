.model small
.stack 100h
.386

.data
    mov_str db "mov$"
    out_str db "out$"
    not_str db "not$"
    rcr_str db "rcr$"
    xlat_str db "xlat$"
    unsupported_str db "nil$"

    short_str db "short$"
    wide_str db "wide$"

    endl_str db 13, 10, '$'

    ttt_str db "tttt$"

    w_val db 0
    v_val db 0
    mod_val db 0
    rm_val db 0
    reg_val db 0

    byte_str db "byte$"
    word_str db "word$"
    ptr_str db "ptr$"

    input_filename db "test.com", 0, '$'
    input_filehandle dw 0
    input_buffer db 255 dup(0), '$'
    input_pointer dw 0

    error_msg db "something went wrong", 13, 10, '$'

    @DECLARE_OPCODES
.code

@INCLUDE("mov.asm")
@INCLUDE("opcodes.asm")
@INCLUDE("lib.asm")

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

@DECL_PROC(retrieve_word_proc,
    ;; retrieve next word (just two bytes)\, also do byte swap
    ;; note that we there push bp\, since we can not push all argument before doing
    ;; call retrieve_next_byte\, (this procedure breaks bp thing)
    push bp

    xor cx\, cx

    call retrieve_next_byte
    mov ch\, al
    push cx
    call retrieve_next_byte
    pop cx
    mov ah\, al
    mov al\, ch

    pop bp
)

@MACRO(@MASK_VALUE, (@VALUE, @MASK),
    and @VALUE\, @MASK
)

@INCLUDE("inst\\mov.asm")
@INCLUDE("inst\\out.asm")
@INCLUDE("inst\\not.asm")
@INCLUDE("inst\\rcr.asm")
@INCLUDE("inst\\xlat.asm")

process_unsupported:
    @PRINT_STR(offset unsupported_str)
    @PRINT_STR(offset endl_str)

    jmp inst_loop

exit:
    @EXIT(0)

handle_error:
    @EXIT(1)

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
