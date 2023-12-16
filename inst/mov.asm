process_mov:
    @PRINT_STR(offset mov_str)

    @JMP_IN_RANGE(al, 10001000b, 10001011b,mov_scenario_1) # 1.) 1000 10dw
    @JMP_IN_RANGE(al, 11000110b, 11000111b,mov_scenario_2) # 2.) 1100 011w
    @JMP_IN_RANGE(al, 10110000b, 10111111b,mov_scenario_3) # 3.) 1011 wreg
    @JMP_IN_RANGE(al, 10100000b, 10100001b,mov_scenario_4) # 4.) 1010 000w
    @JMP_IN_RANGE(al, 10100010b, 10100011b,mov_scenario_5) # 5.) 1010 001w

    # 6.) 1000 11d0
    @JMP_EQL(al, 10001100b, mov_scenario_6)
    @JMP_EQL(al, 10001110b, mov_scenario_6)

    mov_scenario_1:
        @PRINT_BYTE('1')
        jmp mov_finish

    mov_scenario_2:
        @PRINT_BYTE('2')
        jmp mov_finish

    mov_scenario_3:
        @PRINT_BYTE('3')
        jmp mov_finish

    mov_scenario_4:
        @PRINT_BYTE('4')
        jmp mov_finish

    mov_scenario_5:
        @PRINT_BYTE('5')
        jmp mov_finish

    mov_scenario_6:
        @PRINT_BYTE('6')
        jmp mov_finish

    mov_finish:
    @PRINT_STR(offset endl_str)
    jmp inst_loop