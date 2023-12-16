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

    endl_str db 13, 10, '$'

    w_val db 0
    v_val db 0
    d_val db 0
    mod_val db 0
    rm_val db 0
    reg_val db 0

    input_filename db "test.com", 0, '$'
    input_filehandle dw 0
    input_buffer db 255 dup(0), 10100000b
    input_pointer dw 0
    input_file_read_bytes dw 0

    error_msg db "something went wrong", 13, 10, '$'

    @DECLARE_OPCODES
.code

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

    mov input_file_read_bytes\, ax

    jc handle_error

    cmp input_file_read_bytes\, 0
    je exit
)

@DECL_PROC(retrieve_next_byte,
    ;; retrieving next byte from input file

    ;; first we check if pointer is alredy outside buffer
    mov bx\, input_file_read_bytes
    cmp input_pointer\, bx
    jne retrieve_next_byte_continue

    ;; if yes then we read file
    @PUSH_ALL
    call read_input_file
    @POP_ALL

    ;; and set pointer to 0
    ;; note that file may be ended\, cause of that we will stop there
    mov input_pointer\, 0

    retrieve_next_byte_continue:

    ;; If pointer is still inside buffer\, and we have not
    ;; readed entire file\, we just return out byte
    xor ax\, ax
    mov bx\, offset input_buffer
    add bx\, input_pointer
    mov al\, [bx]

    ;; and increment pointer\, only during
    ;; next proc call\, we will chekc if we outside buffer
    inc input_pointer
)

@DECL_PROC(retrieve_word_proc,
    ;; retrieve next word (just two bytes)\, also do byte swap
    ;; note that we there push bp\, since we can not push all argument before doing
    ;; call retrieve_next_byte\, (this procedure breaks bp thing)
    push bp

    xor cx\, cx

    @RETRIEVE_NEXT_BYTE
    mov ch\, al
    push cx
    @RETRIEVE_NEXT_BYTE
    pop cx
    mov ah\, al
    mov al\, ch

    pop bp
)

@MACRO(@MASK_VALUE, (@VALUE, @MASK),
    and @VALUE\, @MASK
)

@INCLUDE("process_shader.asm")

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
    @PRINT_STR(offset error_msg)

    @EXIT(1)

start:
    mov dx, @data
    mov ds, dx

    call open_input_file
    call read_input_file

    inst_loop:
         @RETRIEVE_NEXT_BYTE

         xor bx, bx
         mov bl, al
         shl bx, 1
         add bx, offset OP_00000000

         jmp [bx]

    jmp exit
end start
