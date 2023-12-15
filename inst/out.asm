process_out:
    @PRINT_STR(offset out_str)

    mov w_val, al
    @MASK_VALUE(w_val, 00000001b)

    @MASK_VALUE(al, 00001000b)

    @JMP_EQL(al, 00000000b, out_scenario_0)
    @JMP_EQL(al, 00001000b, out_scenario_1)

    out_scenario_0:
        call retrieve_next_byte
        xor ah, ah

        @PRINT_WORD(ax)

        jmp out_continue

    out_scenario_1:
        @PRINT_STR(offset W_REG_STR_1010)
        jmp out_continue

    out_continue:

    @JMP_EQL(w_val, 00000000b, out_scenario_al)
    @JMP_EQL(w_val, 00000000b, out_scenario_ax)

    out_scenario_al:
        @PRINT_STR(offset W_REG_STR_0000)
        jmp out_finish

    out_scenario_ax:
        @PRINT_STR(offset W_REG_STR_1000)
        jmp out_finish

    out_finish:

    @PRINT_STR(offset endl_str)

    jmp inst_loop