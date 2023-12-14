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
    ;; calling print interupt
    mov cx\\, 09h
    mov ah\\, 09h
    mov dx\\, @TEXT
    int 21h
)

@MACRO(@PUSH_ALL, (),
    ;; push all registers on top of the stack
    push ax
    push bx
    push cx
    push dx

    push bp
    push di
    push si
)

@MACRO(@POP_ALL, (),
    ;; pop all registers from top of the stack
    pop si
    pop di
    pop bp

    pop dx
    pop cx
    pop bx
    pop ax
)

)