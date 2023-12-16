process_xx_reg_xxx_scenario:
    xor ax, ax
    mov al, w_val
    shl ax, 3
    add al, reg_val

    mov bh, 3
    mul bh
    mov bx, offset W_REG_STR_0000
    add bx, ax

    @PRINT_STR(bx)

    ret

mov_scenario_1:
    @PRINT_BYTE('1')

    mov w_val, al
    @MASK_VALUE(w_val, 00000001b)

    mov d_val, al
    @MASK_VALUE(d_val, 00000010b)

    @RETRIEVE_NEXT_BYTE

    mov rm_val, al
    @MASK_VALUE(rm_val, 00000111b)

    mov reg_val, al
    @MASK_VALUE(reg_val, 00111000b)
    shr reg_val, 3

    mov mod_val, al
    @MASK_VALUE(mod_val, 11000000b)
    shr mod_val, 3

    @JMP_EQL(d_val, 00000000b, mov_scenario_1_d_0)
        call process_xx_reg_xxx_scenario
    mov_scenario_1_d_0:

    @JMP_EQL(mod_val, 00000000b, mov_scenario_1_mod_00)
    @JMP_EQL(mod_val, 00001000b, mov_scenario_1_mod_01)
    @JMP_EQL(mod_val, 00010000b, mov_scenario_1_mod_10)
    @JMP_EQL(mod_val, 00011000b, mov_scenario_1_mod_11)

    mov_scenario_1_mod_00:
        call process_mod_xxx_rm_scenario_00
        jmp mov_scenario_continue

    mov_scenario_1_mod_01:
        call process_mod_xxx_rm_scenario_01
        jmp mov_scenario_continue

    mov_scenario_1_mod_10:
        call process_mod_xxx_rm_scenario_10
        jmp mov_scenario_continue

    mov_scenario_1_mod_11:
        call process_mod_xxx_rm_scenario_11
        jmp mov_scenario_continue

    mov_scenario_continue:

    @JMP_EQL(d_val, 00000010b, mov_scenario_1_d_1)
        call process_xx_reg_xxx_scenario
    mov_scenario_1_d_1:

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

    mov_finish:
    @PRINT_STR(offset endl_str)

    jmp inst_loop