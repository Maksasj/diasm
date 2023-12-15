process_rcr:
    @PRINT_STR(offset rcr_str)

    mov cl, al
    @MASK_VALUE(al, 00000001b)
    mov w_val, al

    mov al, cl
    @MASK_VALUE(al, 00000010b)
    mov v_val, al

    ;; there we setup mod and r/m values and jump to correct mod scenario
    call retrieve_next_byte

    mov cl, al
    @MASK_VALUE(cl, 00000111b)
    mov rm_val, cl

    mov cl, al
    @MASK_VALUE(cl, 11000000b)
    shr cl, 3
    mov mod_val, cl

    @JMP_EQL(mod_val, 00000000b, rcr_scenario_mod_00)
    @JMP_EQL(mod_val, 00001000b, rcr_scenario_mod_01)
    @JMP_EQL(mod_val, 00010000b, rcr_scenario_mod_10)
    @JMP_EQL(mod_val, 00011000b, rcr_scenario_mod_11)

    rcr_scenario_mod_00:
        call process_mod_xxx_rm_scenario_00
        jmp rcr_continue

    rcr_scenario_mod_01:
        call process_mod_xxx_rm_scenario_01
        jmp rcr_continue

    rcr_scenario_mod_10:
        call process_mod_xxx_rm_scenario_10
        jmp rcr_continue

    rcr_scenario_mod_11:
        call process_mod_xxx_rm_scenario_11
        jmp rcr_continue

    rcr_continue:

    @JMP_EQL(v_val, 00000000b, rcr_scenario_v_0)
    @JMP_EQL(v_val, 00000010b, rcr_scenario_v_1)

    rcr_scenario_v_0:
        mov ax, 1
        @PRINT_WORD(ax)
        jmp rcr_finish

    rcr_scenario_v_1:
        @PRINT_STR(offset W_REG_STR_0001)
        jmp rcr_finish

    rcr_finish:
    @PRINT_STR(offset endl_str)

    jmp inst_loop