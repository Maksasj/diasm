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

process_xx_sreg_xxx_scenario:
    xor ax, ax
    add al, sreg_val

    mov bh, 3
    mul bh
    mov bx, offset SREG_00
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
        jmp mov_scenario_1_continue

    mov_scenario_1_mod_01:
        call process_mod_xxx_rm_scenario_01
        jmp mov_scenario_1_continue

    mov_scenario_1_mod_10:
        call process_mod_xxx_rm_scenario_10
        jmp mov_scenario_1_continue

    mov_scenario_1_mod_11:
        call process_mod_xxx_rm_scenario_11
        jmp mov_scenario_1_continue

    mov_scenario_1_continue:

    @JMP_EQL(d_val, 00000010b, mov_scenario_1_d_1)
        call process_xx_reg_xxx_scenario
    mov_scenario_1_d_1:

    jmp mov_finish

mov_scenario_2:
    @PRINT_BYTE('2')

    mov w_val, al
    @MASK_VALUE(w_val, 00000001b)

    @RETRIEVE_NEXT_BYTE

    mov rm_val, al
    @MASK_VALUE(rm_val, 00000111b)

    mov mod_val, al
    @MASK_VALUE(mod_val, 11000000b)
    shr mod_val, 3

    @JMP_EQL(mod_val, 00000000b, mov_scenario_2_mod_00)
    @JMP_EQL(mod_val, 00001000b, mov_scenario_2_mod_01)
    @JMP_EQL(mod_val, 00010000b, mov_scenario_2_mod_10)
    @JMP_EQL(mod_val, 00011000b, mov_scenario_2_mod_11)

    mov_scenario_2_mod_00:
        call process_mod_xxx_rm_scenario_00
        jmp mov_scenario_2_continue

    mov_scenario_2_mod_01:
        call process_mod_xxx_rm_scenario_01
        jmp mov_scenario_2_continue

    mov_scenario_2_mod_10:
        call process_mod_xxx_rm_scenario_10
        jmp mov_scenario_2_continue

    mov_scenario_2_mod_11:
        call process_mod_xxx_rm_scenario_11
        jmp mov_scenario_2_continue

    mov_scenario_2_continue:

    @JMP_EQL(w_val, 00000000b, mov_scenario_2_w_0)
    @JMP_EQL(w_val, 00000001b, mov_scenario_2_w_1)

    mov_scenario_2_w_0:
        @RETRIEVE_NEXT_BYTE
        xor ah, ah
        @PRINT_WORD(ax)
        jmp mov_scenario_2_finish

    mov_scenario_2_w_1:
        @RETRIEVE_NEXT_WORD
        @PRINT_WORD(ax)
        jmp mov_scenario_2_finish

    mov_scenario_2_finish:

    jmp mov_finish

mov_scenario_3:
    @PRINT_BYTE('3')

    xor ah, ah
    @MASK_VALUE(al, 00001111b)
    mov cl, al

    mov bh, 3
    mul bh
    mov bx, offset W_REG_STR_0000
    add bx, ax

    @PRINT_STR(bx)

    mov w_val, cl
    @MASK_VALUE(w_val, 00001000b)

    @JMP_EQL(w_val, 00000000b, mov_scenario_3_w_0)
    @JMP_EQL(w_val, 00001000b, mov_scenario_3_w_1)

    mov_scenario_3_w_0:
        @RETRIEVE_NEXT_BYTE
        xor ah, ah
        @PRINT_WORD(ax)
        jmp mov_scenario_3_continue
    mov_scenario_3_w_1:
        @RETRIEVE_NEXT_WORD
        @PRINT_WORD(ax)
        jmp mov_scenario_3_continue

    mov_scenario_3_continue:

    jmp mov_finish

mov_scenario_4:
    @PRINT_BYTE('4')

    mov w_val, al
    @MASK_VALUE(w_val, 00000001b)

    @JMP_EQL(w_val, 00000000b, mov_scenario_4_w_0)
    @JMP_EQL(w_val, 00000001b, mov_scenario_4_w_1)

    mov_scenario_4_w_0:
        @PRINT_STR(offset W_REG_STR_0000)
        jmp mov_scenario_4_continue
    mov_scenario_4_w_1:
        @PRINT_STR(offset W_REG_STR_1000)
        jmp mov_scenario_4_continue

    mov_scenario_4_continue:

    @RETRIEVE_NEXT_WORD
    @PRINT_WORD(ax)

    jmp mov_finish

mov_scenario_5:
    @PRINT_BYTE('5')

    mov w_val, al
    @MASK_VALUE(w_val, 00000001b)

    @RETRIEVE_NEXT_WORD
    @PRINT_WORD(ax)

    @JMP_EQL(w_val, 00000000b, mov_scenario_5_w_0)
    @JMP_EQL(w_val, 00000001b, mov_scenario_5_w_1)

    mov_scenario_5_w_0:
        @PRINT_STR(offset W_REG_STR_0000)
        jmp mov_scenario_5_continue
    mov_scenario_5_w_1:
        @PRINT_STR(offset W_REG_STR_1000)
        jmp mov_scenario_5_continue

    mov_scenario_5_continue:

    jmp mov_finish

mov_scenario_6:
    @PRINT_BYTE('6')

    mov d_val, al
    @MASK_VALUE(d_val, 00000010b)

    @RETRIEVE_NEXT_BYTE

    mov rm_val, al
    @MASK_VALUE(rm_val, 00000111b)

    mov sreg_val, al
    @MASK_VALUE(sreg_val, 00011000b)
    shr sreg_val, 3

    mov mod_val, al
    @MASK_VALUE(mod_val, 11000000b)
    shr mod_val, 3

    @JMP_EQL(d_val, 00000000b, mov_scenario_6_d_0)
        call process_xx_sreg_xxx_scenario
    mov_scenario_6_d_0:

    @JMP_EQL(mod_val, 00000000b, mov_scenario_6_mod_00)
    @JMP_EQL(mod_val, 00001000b, mov_scenario_6_mod_01)
    @JMP_EQL(mod_val, 00010000b, mov_scenario_6_mod_10)
    @JMP_EQL(mod_val, 00011000b, mov_scenario_6_mod_11)

    mov_scenario_6_mod_00:
        call process_mod_xxx_rm_scenario_00
        jmp mov_scenario_6_continue

    mov_scenario_6_mod_01:
        call process_mod_xxx_rm_scenario_01
        jmp mov_scenario_6_continue

    mov_scenario_6_mod_10:
        call process_mod_xxx_rm_scenario_10
        jmp mov_scenario_6_continue

    mov_scenario_6_mod_11:
        mov w_val, 1
        call process_mod_xxx_rm_scenario_11
        jmp mov_scenario_6_continue

    mov_scenario_6_continue:

    @JMP_EQL(d_val, 00000010b, mov_scenario_6_d_1)
        call process_xx_sreg_xxx_scenario
    mov_scenario_6_d_1:

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