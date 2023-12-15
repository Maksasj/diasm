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