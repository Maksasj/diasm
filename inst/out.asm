process_out:
    @PRINT_STR(offset out_str)
    @PRINT_STR(offset endl_str)

    # out_0_scenario:
    #     @PRINT_STR(offset out_str)
    #     @MASK_VALUE(al, 00000001b)
    #     mov w_val, al
#
    #     call retrieve_next_byte
#
    #     @PRINT_BYTE(al)
#
    #     @PRINT_STR(offset ax_reg)
#
    #     jmp out_continue
    # out_1_scenario:
    #     @PRINT_STR(offset out_str)
    #     @MASK_VALUE(al, 00000001b)
    #     mov w_val, al
#
    #     call retrieve_next_byte
#
    #     jmp out_continue

    out_continue:
    jmp inst_loop