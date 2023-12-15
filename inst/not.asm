@DECL_PROC(process_mod_xxx_rm_scenario_00,
    @JMP_EQL(rm_val, 00000110b, process_mod_xxx_rm_scenario_00_ties_adr)

    @PREPARE_AX_MOD_R_M

    ;; calculate adress to mod r/m str thing
    mov bh\, 24
    mul bh
    mov bx\, offset MOD_R_M_STR_00000
    add bx\, ax

    @PRINT_STR(bx)

    jmp process_mod_xxx_rm_scenario_00_continue

    process_mod_xxx_rm_scenario_00_ties_adr:
        push bp
        call retrieve_word_proc
        pop bp

        @PRINT_WORD(ax)

    process_mod_xxx_rm_scenario_00_continue:
)

@DECL_PROC(process_mod_xxx_rm_scenario_01,
    @PREPARE_AX_MOD_R_M

    ;; calculate adress to mod r/m str thing
    mov bh\, 24
    mul bh
    mov bx\, offset MOD_R_M_STR_00000
    add bx\, ax

    @PRINT_STR(bx)

    push bp
    call retrieve_next_byte
    pop bp

    xor ah\, ah

    @PRINT_WORD(ax)
)

@DECL_PROC(process_mod_xxx_rm_scenario_10,
    @PREPARE_AX_MOD_R_M

    ;; calculate adress to mod r/m str thing
    mov bh\, 24
    mul bh
    mov bx\, offset MOD_R_M_STR_00000
    add bx\, ax

    @PRINT_STR(bx)

    push bp
    call retrieve_word_proc
    pop bp

    @PRINT_WORD(ax)
)

@DECL_PROC(process_mod_xxx_rm_scenario_11,
    xor ax\, ax
    mov al\, w_val
    shl ax\, 3
    add al\, rm_val

    mov bh\, 3
    mul bh
    mov bx\, offset W_REG_STR_0000
    add bx\, ax

    @PRINT_STR(bx)
)

process_not:
    @PRINT_STR(offset not_str)

    @MASK_VALUE(al, 00000001b)
    mov w_val, al

    call retrieve_next_byte

    mov cl, al
    @MASK_VALUE(cl, 00000111b)
    mov rm_val, cl

    mov cl, al
    @MASK_VALUE(cl, 11000000b)
    shr cl, 3
    mov mod_val, cl

    @JMP_EQL(mod_val, 00000000b, not_scenario_mod_00)
    @JMP_EQL(mod_val, 00001000b, not_scenario_mod_01)
    @JMP_EQL(mod_val, 00010000b, not_scenario_mod_10)
    @JMP_EQL(mod_val, 00011000b, not_scenario_mod_11)

    not_scenario_mod_00:
        call process_mod_xxx_rm_scenario_00
        jmp not_continue

    not_scenario_mod_01:
        call process_mod_xxx_rm_scenario_01
        jmp not_continue

    not_scenario_mod_10:
        call process_mod_xxx_rm_scenario_10
        jmp not_continue

    not_scenario_mod_11:
        call process_mod_xxx_rm_scenario_11
        jmp not_continue

    not_continue:

    @PRINT_STR(offset endl_str)

    jmp inst_loop