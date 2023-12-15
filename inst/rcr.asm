process_rcr:
    @PRINT_STR(offset rcr_str)

    mov w_val, al
    @MASK_VALUE(w_val, 00000001b)

    mov v_val, al
    @MASK_VALUE(v_val, 00000010b)

    ;; there we setup mod and r/m values and jump to correct mod scenario
    @RETRIEVE_NEXT_BYTE

    mov rm_val, al
    @MASK_VALUE(rm_val, 00000111b)

    mov mod_val, al
    @MASK_VALUE(mod_val, 11000000b)
    shr mod_val, 3

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