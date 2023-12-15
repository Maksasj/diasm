@IF_NOT_DEF(@LIB_INCLUDE_GUARD,
    @MACRO(@LIB_INCLUDE_GUARD, (), ())

@MACRO(@DECL_PROC, (@LABEL, @BODY),
;; Declaring and procedure
@LABEL:
    pop bp
    @BODY
    push bp
    ret
)

@MACRO(@EXIT, (@ARG1),
    ;; exits with @ARG1 exit code
    mov ah\\, 4ch
    mov al\\, @ARG1
    int 21h
)

@MACRO(@PRINT_STR, (@TEXT),
    @PUSH_ALL

    ;; calling print interupt
    mov cx\\, 09h
    mov ah\\, 09h
    mov dx\\, @TEXT
    int 21h

    @POP_ALL
)

@MACRO(@JMP_EQL, (@ARG1, @ARG2, @LABEL),
    cmp @ARG1\\, @ARG2
    je @LABEL
)

tasm_push_all_m MACRO
    push ax ; ah ~ al
    push bx ; bh ~ bl
    push cx ; ch ~ cl
    push dx ; dh ~ dl

    push bp
    push di
    push si
ENDM

tasm_pop_all_m MACRO
    pop si
    pop di
    pop bp

    pop dx
    pop cx
    pop bx
    pop ax
ENDM

@MACRO(@PUSH_ALL, (),
    ;; push all registers on top of the stack
    tasm_push_all_m
)

@MACRO(@POP_ALL, (),
    ;; pop all registers from top of the stack
    tasm_pop_all_m
)

@DECL_PROC(print_word_proc,
    mov cx\\,0
    mov dx\\,0
    label1:
        cmp ax\\,0
        je print1
        mov bx\\,10
        div bx
        push dx
        inc cx
        xor dx\\,dx
        jmp label1
    print1:
        cmp cx\\,0
        je print_word_exit
        pop dx
        add dx\\,48
        mov ah\\,02h
        int 21h
        dec cx
        jmp print1
    print_word_exit:
)

@MACRO(@PRINT_WORD, (@WORD),
    @PUSH_ALL
    ;; print word\\, from @WORD
    mov ax\\, @WORD
    call print_word_proc
    @POP_ALL
)

@DECL_PROC(print_byte_proc,
    mov ah\\, 02h
    int 21h
)

@MACRO(@RETRIEVE_NEXT_BYTE, (),
    ;; retrieve next byte
    push bp
    call retrieve_next_byte
    pop bp
)

@MACRO(@PRINT_BYTE, (@BYTE),
    @PUSH_ALL
    ;; print byte\\, from @BYTE
    mov dl\\, @BYTE
    call print_byte_proc
    @POP_ALL
)

@MACRO(@PREPARE_AX_MOD_R_M, (),
    ;; store mod and rm in format mod rm 5 bytes
    xor al\\, al
    mov al\\, mod_val
    or al\\, rm_val
)

)