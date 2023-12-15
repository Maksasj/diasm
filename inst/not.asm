process_not:
    @PRINT_STR(offset not_str)

    mov w_val, al
    @MASK_VALUE(w_val, 00000001b)

    call retrieve_next_byte

    mov rm_val, al
    @MASK_VALUE(rm_val, 00000111b)

    mov mod_val, al
    @MASK_VALUE(mod_val, 11000000b)
    shr mod_val, 3

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