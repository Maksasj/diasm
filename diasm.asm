.model small
.stack 100h
.386

@INCLUDE("mov.asm")
@INCLUDE("opcodes.asm")

.data
    mov_thing db "processing mov", 13, 10, '$'
    out_thing db "processing out", 13, 10, '$'
    not_thing db "processing not", 13, 10, '$'
    rcr_thing db "processing rcr", 13, 10, '$'
    xlat_thing db "processing xlat", 13, 10, '$'

    unsupported_thing db "processing unsupported", 13, 10, '$'
    @DECLARE_OPCODES
.code

@MACRO(@EXIT_OK, (),
    ;; exits if 0 exit code
    mov ah\, 4ch
    mov al\, 0
    int 21h
)

@MACRO(@PRINT, (@TEXT),
    ;; calling print interupt
    mov cx\, 09h
    mov ah\, 09h
    mov dx\, @TEXT
    int 21h
)

@MACRO(@JMP_EQL, (@VAL1, @VAL2, @LABEL),
    ;; comparing @VAL1 and @VAL2 and if they are equal jumps to @LABEL
    cmp @VAL1\, @VAL2
    je @LABEL
)

process_mov:
    @PRINT(offset mov_thing)
    ret

process_out:
    @PRINT(offset out_thing)
    ret

process_not:
    @PRINT(offset not_thing)
    ret

process_rcr:
    @PRINT(offset rcr_thing)
    ret

process_xlat:
    @PRINT(offset xlat_thing)
    ret

process_unsupported:
    @PRINT(offset unsupported_thing)
    ret

start:
    mov dx, @data
    mov ds, dx

    mov bx, 10101101b
    jmp [bx]

    @EXIT_OK
end start
