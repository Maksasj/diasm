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

    @MACRO(@PREPARE_AX_MOD_R_M, (),
        ;; store mod and rm in format mod rm 5 bytes
        xor al\, al
        mov al\, mod_val
        or al\, rm_val
    )

    not_scenario_mod_00:
        @JMP_EQL(rm_val, 00000110b, not_ties_adr)

        @PREPARE_AX_MOD_R_M

        ;; calculate adress to mod r/m str thing
        mov bh, 24
        mul bh
        mov bx, offset MOD_R_M_STR_00000
        add bx, ax

        @PRINT_STR(bx)

        jmp not_continue

        not_ties_adr:
            call retrieve_word
            @PRINT_WORD(ax)

        jmp not_continue
    not_scenario_mod_01:
        @PREPARE_AX_MOD_R_M

        ;; calculate adress to mod r/m str thing
        mov bh, 24
        mul bh
        mov bx, offset MOD_R_M_STR_00000
        add bx, ax

        @PRINT_STR(bx)

        call retrieve_next_byte
        xor ah, ah

        @PRINT_WORD(ax)

        jmp not_continue
    not_scenario_mod_10:
        @PREPARE_AX_MOD_R_M

        ;; calculate adress to mod r/m str thing
        mov bh, 24
        mul bh
        mov bx, offset MOD_R_M_STR_00000
        add bx, ax

        @PRINT_STR(bx)

        call retrieve_word

        @PRINT_WORD(ax)

        jmp not_continue
    not_scenario_mod_11:
        xor ax, ax
        mov al, w_val
        shl ax, 3
        add al, rm_val

        mov bh, 3
        mul bh
        mov bx, offset W_REG_STR_0000
        add bx, ax

        @PRINT_STR(bx)

        jmp not_continue

    not_continue:

    @PRINT_STR(offset endl_str)

    jmp inst_loop