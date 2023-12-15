@IF_NOT_DEF(@OPCODES_INCLUDE_GUARD,
    @MACRO(@OPCODES_INCLUDE_GUARD, (), ())

    @MACRO(@DECL_OPCODE, (@NAME, @VALUE),
    @NAME dw @VALUE)

    # MOV
    # MOV1 1000'10dw
    #      1000'1000
    #      1000'1001
    #      1000'1010
    #      1000'1011
    # MOV2 1100'011w
    #      1100'0110
    #      1100'0111
    # MOV3 1011'wreg
    #      1011'0000
    #      1011'0001
    #      1011'0010
    #      1011'0011
    #      1011'0100
    #      1011'0101
    #      1011'0110
    #      1011'0111
    #      1011'1000
    #      1011'1001
    #      1011'1010
    #      1011'1011
    #      1011'1100
    #      1011'1101
    #      1011'1110
    #      1011'1111
    # MOV4 1010'000w
    #      1010'0000
    #      1010'0001
    # MOV5 1010'001w
    #      1010'0010
    #      1010'0011
    # MOV6 1000'11d0
    #      1000'1100
    #      1000'1110
    #
    # OUT
    # OUT1 1110'011w
    #      1110'0110
    #      1110'0111
    # OUT2 1110'111w
    #      1110'1110
    #      1110'1111
    #
    # NOT  1111'011w
    #      1111'0110
    #      1111'0111
    #
    # RCR  1101'00vw
    #      1101'0000
    #      1101'0001
    #      1101'0010
    #      1101'0011
    #
    # XLAT 1101'0111

    @MACRO(@DECLARE_OPCODES, (),
    ;; declaring all opcodes @DECL_OPCODE(OP_00000000\, process_unsupported) # 00000000
         @DECL_OPCODE(OP_00000001\, process_unsupported) # 00000001
         @DECL_OPCODE(OP_00000010\, process_unsupported) # 00000010
         @DECL_OPCODE(OP_00000011\, process_unsupported) # 00000011
         @DECL_OPCODE(OP_00000100\, process_unsupported) # 00000100
         @DECL_OPCODE(OP_00000101\, process_unsupported) # 00000101
         @DECL_OPCODE(OP_00000110\, process_unsupported) # 00000110
         @DECL_OPCODE(OP_00000111\, process_unsupported) # 00000111
         @DECL_OPCODE(OP_00001000\, process_unsupported) # 00001000
         @DECL_OPCODE(OP_00001001\, process_unsupported) # 00001001
         @DECL_OPCODE(OP_00001010\, process_unsupported) # 00001010
         @DECL_OPCODE(OP_00001011\, process_unsupported) # 00001011
         @DECL_OPCODE(OP_00001100\, process_unsupported) # 00001100
         @DECL_OPCODE(OP_00001101\, process_unsupported) # 00001101
         @DECL_OPCODE(OP_00001110\, process_unsupported) # 00001110
         @DECL_OPCODE(OP_00001111\, process_unsupported) # 00001111
         @DECL_OPCODE(OP_00010000\, process_unsupported) # 00010000
         @DECL_OPCODE(OP_00010001\, process_unsupported) # 00010001
         @DECL_OPCODE(OP_00010010\, process_unsupported) # 00010010
         @DECL_OPCODE(OP_00010011\, process_unsupported) # 00010011
         @DECL_OPCODE(OP_00010100\, process_unsupported) # 00010100
         @DECL_OPCODE(OP_00010101\, process_unsupported) # 00010101
         @DECL_OPCODE(OP_00010110\, process_unsupported) # 00010110
         @DECL_OPCODE(OP_00010111\, process_unsupported) # 00010111
         @DECL_OPCODE(OP_00011000\, process_unsupported) # 00011000
         @DECL_OPCODE(OP_00011001\, process_unsupported) # 00011001
         @DECL_OPCODE(OP_00011010\, process_unsupported) # 00011010
         @DECL_OPCODE(OP_00011011\, process_unsupported) # 00011011
         @DECL_OPCODE(OP_00011100\, process_unsupported) # 00011100
         @DECL_OPCODE(OP_00011101\, process_unsupported) # 00011101
         @DECL_OPCODE(OP_00011110\, process_unsupported) # 00011110
         @DECL_OPCODE(OP_00011111\, process_unsupported) # 00011111
         @DECL_OPCODE(OP_00100000\, process_unsupported) # 00100000
         @DECL_OPCODE(OP_00100001\, process_unsupported) # 00100001
         @DECL_OPCODE(OP_00100010\, process_unsupported) # 00100010
         @DECL_OPCODE(OP_00100011\, process_unsupported) # 00100011
         @DECL_OPCODE(OP_00100100\, process_unsupported) # 00100100
         @DECL_OPCODE(OP_00100101\, process_unsupported) # 00100101
         @DECL_OPCODE(OP_00100110\, process_unsupported) # 00100110
         @DECL_OPCODE(OP_00100111\, process_unsupported) # 00100111
         @DECL_OPCODE(OP_00101000\, process_unsupported) # 00101000
         @DECL_OPCODE(OP_00101001\, process_unsupported) # 00101001
         @DECL_OPCODE(OP_00101010\, process_unsupported) # 00101010
         @DECL_OPCODE(OP_00101011\, process_unsupported) # 00101011
         @DECL_OPCODE(OP_00101100\, process_unsupported) # 00101100
         @DECL_OPCODE(OP_00101101\, process_unsupported) # 00101101
         @DECL_OPCODE(OP_00101110\, process_unsupported) # 00101110
         @DECL_OPCODE(OP_00101111\, process_unsupported) # 00101111
         @DECL_OPCODE(OP_00110000\, process_unsupported) # 00110000
         @DECL_OPCODE(OP_00110001\, process_unsupported) # 00110001
         @DECL_OPCODE(OP_00110010\, process_unsupported) # 00110010
         @DECL_OPCODE(OP_00110011\, process_unsupported) # 00110011
         @DECL_OPCODE(OP_00110100\, process_unsupported) # 00110100
         @DECL_OPCODE(OP_00110101\, process_unsupported) # 00110101
         @DECL_OPCODE(OP_00110110\, process_unsupported) # 00110110
         @DECL_OPCODE(OP_00110111\, process_unsupported) # 00110111
         @DECL_OPCODE(OP_00111000\, process_unsupported) # 00111000
         @DECL_OPCODE(OP_00111001\, process_unsupported) # 00111001
         @DECL_OPCODE(OP_00111010\, process_unsupported) # 00111010
         @DECL_OPCODE(OP_00111011\, process_unsupported) # 00111011
         @DECL_OPCODE(OP_00111100\, process_unsupported) # 00111100
         @DECL_OPCODE(OP_00111101\, process_unsupported) # 00111101
         @DECL_OPCODE(OP_00111110\, process_unsupported) # 00111110
         @DECL_OPCODE(OP_00111111\, process_unsupported) # 00111111
         @DECL_OPCODE(OP_01000000\, process_unsupported) # 01000000
         @DECL_OPCODE(OP_01000001\, process_unsupported) # 01000001
         @DECL_OPCODE(OP_01000010\, process_unsupported) # 01000010
         @DECL_OPCODE(OP_01000011\, process_unsupported) # 01000011
         @DECL_OPCODE(OP_01000100\, process_unsupported) # 01000100
         @DECL_OPCODE(OP_01000101\, process_unsupported) # 01000101
         @DECL_OPCODE(OP_01000110\, process_unsupported) # 01000110
         @DECL_OPCODE(OP_01000111\, process_unsupported) # 01000111
         @DECL_OPCODE(OP_01001000\, process_unsupported) # 01001000
         @DECL_OPCODE(OP_01001001\, process_unsupported) # 01001001
         @DECL_OPCODE(OP_01001010\, process_unsupported) # 01001010
         @DECL_OPCODE(OP_01001011\, process_unsupported) # 01001011
         @DECL_OPCODE(OP_01001100\, process_unsupported) # 01001100
         @DECL_OPCODE(OP_01001101\, process_unsupported) # 01001101
         @DECL_OPCODE(OP_01001110\, process_unsupported) # 01001110
         @DECL_OPCODE(OP_01001111\, process_unsupported) # 01001111
         @DECL_OPCODE(OP_01010000\, process_unsupported) # 01010000
         @DECL_OPCODE(OP_01010001\, process_unsupported) # 01010001
         @DECL_OPCODE(OP_01010010\, process_unsupported) # 01010010
         @DECL_OPCODE(OP_01010011\, process_unsupported) # 01010011
         @DECL_OPCODE(OP_01010100\, process_unsupported) # 01010100
         @DECL_OPCODE(OP_01010101\, process_unsupported) # 01010101
         @DECL_OPCODE(OP_01010110\, process_unsupported) # 01010110
         @DECL_OPCODE(OP_01010111\, process_unsupported) # 01010111
         @DECL_OPCODE(OP_01011000\, process_unsupported) # 01011000
         @DECL_OPCODE(OP_01011001\, process_unsupported) # 01011001
         @DECL_OPCODE(OP_01011010\, process_unsupported) # 01011010
         @DECL_OPCODE(OP_01011011\, process_unsupported) # 01011011
         @DECL_OPCODE(OP_01011100\, process_unsupported) # 01011100
         @DECL_OPCODE(OP_01011101\, process_unsupported) # 01011101
         @DECL_OPCODE(OP_01011110\, process_unsupported) # 01011110
         @DECL_OPCODE(OP_01011111\, process_unsupported) # 01011111
         @DECL_OPCODE(OP_01100000\, process_unsupported) # 01100000
         @DECL_OPCODE(OP_01100001\, process_unsupported) # 01100001
         @DECL_OPCODE(OP_01100010\, process_unsupported) # 01100010
         @DECL_OPCODE(OP_01100011\, process_unsupported) # 01100011
         @DECL_OPCODE(OP_01100100\, process_unsupported) # 01100100
         @DECL_OPCODE(OP_01100101\, process_unsupported) # 01100101
         @DECL_OPCODE(OP_01100110\, process_unsupported) # 01100110
         @DECL_OPCODE(OP_01100111\, process_unsupported) # 01100111
         @DECL_OPCODE(OP_01101000\, process_unsupported) # 01101000
         @DECL_OPCODE(OP_01101001\, process_unsupported) # 01101001
         @DECL_OPCODE(OP_01101010\, process_unsupported) # 01101010
         @DECL_OPCODE(OP_01101011\, process_unsupported) # 01101011
         @DECL_OPCODE(OP_01101100\, process_unsupported) # 01101100
         @DECL_OPCODE(OP_01101101\, process_unsupported) # 01101101
         @DECL_OPCODE(OP_01101110\, process_unsupported) # 01101110
         @DECL_OPCODE(OP_01101111\, process_unsupported) # 01101111
         @DECL_OPCODE(OP_01110000\, process_unsupported) # 01110000
         @DECL_OPCODE(OP_01110001\, process_unsupported) # 01110001
         @DECL_OPCODE(OP_01110010\, process_unsupported) # 01110010
         @DECL_OPCODE(OP_01110011\, process_unsupported) # 01110011
         @DECL_OPCODE(OP_01110100\, process_unsupported) # 01110100
         @DECL_OPCODE(OP_01110101\, process_unsupported) # 01110101
         @DECL_OPCODE(OP_01110110\, process_unsupported) # 01110110
         @DECL_OPCODE(OP_01110111\, process_unsupported) # 01110111
         @DECL_OPCODE(OP_01111000\, process_unsupported) # 01111000
         @DECL_OPCODE(OP_01111001\, process_unsupported) # 01111001
         @DECL_OPCODE(OP_01111010\, process_unsupported) # 01111010
         @DECL_OPCODE(OP_01111011\, process_unsupported) # 01111011
         @DECL_OPCODE(OP_01111100\, process_unsupported) # 01111100
         @DECL_OPCODE(OP_01111101\, process_unsupported) # 01111101
         @DECL_OPCODE(OP_01111110\, process_unsupported) # 01111110
         @DECL_OPCODE(OP_01111111\, process_unsupported) # 01111111
         @DECL_OPCODE(OP_10000000\, process_unsupported) # 10000000
         @DECL_OPCODE(OP_10000001\, process_unsupported) # 10000001
         @DECL_OPCODE(OP_10000010\, process_unsupported) # 10000010
         @DECL_OPCODE(OP_10000011\, process_unsupported) # 10000011
         @DECL_OPCODE(OP_10000100\, process_unsupported) # 10000100
         @DECL_OPCODE(OP_10000101\, process_unsupported) # 10000101
         @DECL_OPCODE(OP_10000110\, process_unsupported) # 10000110
         @DECL_OPCODE(OP_10000111\, process_unsupported) # 10000111
         @DECL_OPCODE(OP_10001000\, process_mov)         # 10001000 Scenario 1
         @DECL_OPCODE(OP_10001001\, process_mov)         # 10001001 Scenario 1
         @DECL_OPCODE(OP_10001010\, process_mov)         # 10001010 Scenario 1
         @DECL_OPCODE(OP_10001011\, process_mov)         # 10001011 Scenario 1
         @DECL_OPCODE(OP_10001100\, process_mov)         # 10001100 Scenario 6
         @DECL_OPCODE(OP_10001101\, process_mov)         # 10001101 Scenario 6
         @DECL_OPCODE(OP_10001110\, process_unsupported) # 10001110
         @DECL_OPCODE(OP_10001111\, process_unsupported) # 10001111
         @DECL_OPCODE(OP_10010000\, process_unsupported) # 10010000
         @DECL_OPCODE(OP_10010001\, process_unsupported) # 10010001
         @DECL_OPCODE(OP_10010010\, process_unsupported) # 10010010
         @DECL_OPCODE(OP_10010011\, process_unsupported) # 10010011
         @DECL_OPCODE(OP_10010100\, process_unsupported) # 10010100
         @DECL_OPCODE(OP_10010101\, process_unsupported) # 10010101
         @DECL_OPCODE(OP_10010110\, process_unsupported) # 10010110
         @DECL_OPCODE(OP_10010111\, process_unsupported) # 10010111
         @DECL_OPCODE(OP_10011000\, process_unsupported) # 10011000
         @DECL_OPCODE(OP_10011001\, process_unsupported) # 10011001
         @DECL_OPCODE(OP_10011010\, process_unsupported) # 10011010
         @DECL_OPCODE(OP_10011011\, process_unsupported) # 10011011
         @DECL_OPCODE(OP_10011100\, process_unsupported) # 10011100
         @DECL_OPCODE(OP_10011101\, process_unsupported) # 10011101
         @DECL_OPCODE(OP_10011110\, process_unsupported) # 10011110
         @DECL_OPCODE(OP_10011111\, process_unsupported) # 10011111
         @DECL_OPCODE(OP_10100000\, process_mov)         # 10100000 Scenario 4
         @DECL_OPCODE(OP_10100001\, process_mov)         # 10100001 Scenario 4
         @DECL_OPCODE(OP_10100010\, process_mov)         # 10100010 Scenario 5
         @DECL_OPCODE(OP_10100011\, process_mov)         # 10100011 Scenario 5
         @DECL_OPCODE(OP_10100100\, process_unsupported) # 10100100
         @DECL_OPCODE(OP_10100101\, process_unsupported) # 10100101
         @DECL_OPCODE(OP_10100110\, process_unsupported) # 10100110
         @DECL_OPCODE(OP_10100111\, process_unsupported) # 10100111
         @DECL_OPCODE(OP_10101000\, process_unsupported) # 10101000
         @DECL_OPCODE(OP_10101001\, process_unsupported) # 10101001
         @DECL_OPCODE(OP_10101010\, process_unsupported) # 10101010
         @DECL_OPCODE(OP_10101011\, process_unsupported) # 10101011
         @DECL_OPCODE(OP_10101100\, process_unsupported) # 10101100
         @DECL_OPCODE(OP_10101101\, process_unsupported) # 10101101
         @DECL_OPCODE(OP_10101110\, process_unsupported) # 10101110
         @DECL_OPCODE(OP_10101111\, process_unsupported) # 10101111
         @DECL_OPCODE(OP_10110000\, process_mov)         # 10110000 Scenario 3
         @DECL_OPCODE(OP_10110001\, process_mov)         # 10110001 Scenario 3
         @DECL_OPCODE(OP_10110010\, process_mov)         # 10110010 Scenario 3
         @DECL_OPCODE(OP_10110011\, process_mov)         # 10110011 Scenario 3
         @DECL_OPCODE(OP_10110100\, process_mov)         # 10110100 Scenario 3
         @DECL_OPCODE(OP_10110101\, process_mov)         # 10110101 Scenario 3
         @DECL_OPCODE(OP_10110110\, process_mov)         # 10110110 Scenario 3
         @DECL_OPCODE(OP_10110111\, process_mov)         # 10110111 Scenario 3
         @DECL_OPCODE(OP_10111000\, process_mov)         # 10111000 Scenario 3
         @DECL_OPCODE(OP_10111001\, process_mov)         # 10111001 Scenario 3
         @DECL_OPCODE(OP_10111010\, process_mov)         # 10111010 Scenario 3
         @DECL_OPCODE(OP_10111011\, process_mov)         # 10111011 Scenario 3
         @DECL_OPCODE(OP_10111100\, process_mov)         # 10111100 Scenario 3
         @DECL_OPCODE(OP_10111101\, process_mov)         # 10111101 Scenario 3
         @DECL_OPCODE(OP_10111110\, process_mov)         # 10111110 Scenario 3
         @DECL_OPCODE(OP_10111111\, process_mov)         # 10111111 Scenario 3
         @DECL_OPCODE(OP_11000000\, process_unsupported) # 11000000
         @DECL_OPCODE(OP_11000001\, process_unsupported) # 11000001
         @DECL_OPCODE(OP_11000010\, process_unsupported) # 11000010
         @DECL_OPCODE(OP_11000011\, process_unsupported) # 11000011
         @DECL_OPCODE(OP_11000100\, process_unsupported) # 11000100
         @DECL_OPCODE(OP_11000101\, process_unsupported) # 11000101
         @DECL_OPCODE(OP_11000110\, process_mov)         # 11000110 Scenario 2
         @DECL_OPCODE(OP_11000111\, process_mov)         # 11000111 Scenario 2
         @DECL_OPCODE(OP_11001000\, process_unsupported) # 11001000
         @DECL_OPCODE(OP_11001001\, process_unsupported) # 11001001
         @DECL_OPCODE(OP_11001010\, process_unsupported) # 11001010
         @DECL_OPCODE(OP_11001011\, process_unsupported) # 11001011
         @DECL_OPCODE(OP_11001100\, process_unsupported) # 11001100
         @DECL_OPCODE(OP_11001101\, process_unsupported) # 11001101
         @DECL_OPCODE(OP_11001110\, process_unsupported) # 11001110
         @DECL_OPCODE(OP_11001111\, process_unsupported) # 11001111
         @DECL_OPCODE(OP_11010000\, process_rcr)         # 11010000
         @DECL_OPCODE(OP_11010001\, process_rcr)         # 11010001
         @DECL_OPCODE(OP_11010010\, process_rcr)         # 11010010
         @DECL_OPCODE(OP_11010011\, process_rcr)         # 11010011
         @DECL_OPCODE(OP_11010100\, process_unsupported) # 11010100
         @DECL_OPCODE(OP_11010101\, process_unsupported) # 11010101
         @DECL_OPCODE(OP_11010110\, process_unsupported) # 11010110
         @DECL_OPCODE(OP_11010111\, process_xlat)        # 11010111
         @DECL_OPCODE(OP_11011000\, process_unsupported) # 11011000
         @DECL_OPCODE(OP_11011001\, process_unsupported) # 11011001
         @DECL_OPCODE(OP_11011010\, process_unsupported) # 11011010
         @DECL_OPCODE(OP_11011011\, process_unsupported) # 11011011
         @DECL_OPCODE(OP_11011100\, process_unsupported) # 11011100
         @DECL_OPCODE(OP_11011101\, process_unsupported) # 11011101
         @DECL_OPCODE(OP_11011110\, process_unsupported) # 11011110
         @DECL_OPCODE(OP_11011111\, process_unsupported) # 11011111
         @DECL_OPCODE(OP_11100000\, process_unsupported) # 11100000
         @DECL_OPCODE(OP_11100001\, process_unsupported) # 11100001
         @DECL_OPCODE(OP_11100010\, process_unsupported) # 11100010
         @DECL_OPCODE(OP_11100011\, process_unsupported) # 11100011
         @DECL_OPCODE(OP_11100100\, process_unsupported) # 11100100
         @DECL_OPCODE(OP_11100101\, process_unsupported) # 11100101
         @DECL_OPCODE(OP_11100110\, process_out)         # 11100110 Scenario 1
         @DECL_OPCODE(OP_11100111\, process_out)         # 11100111 Scenario 1
         @DECL_OPCODE(OP_11101000\, process_unsupported) # 11101000
         @DECL_OPCODE(OP_11101001\, process_unsupported) # 11101001
         @DECL_OPCODE(OP_11101010\, process_unsupported) # 11101010
         @DECL_OPCODE(OP_11101011\, process_unsupported) # 11101011
         @DECL_OPCODE(OP_11101100\, process_unsupported) # 11101100
         @DECL_OPCODE(OP_11101101\, process_unsupported) # 11101101
         @DECL_OPCODE(OP_11101110\, process_out)         # 11101110 Scenario 2
         @DECL_OPCODE(OP_11101111\, process_out)         # 11101111 Scenario 2
         @DECL_OPCODE(OP_11110000\, process_unsupported) # 11110000
         @DECL_OPCODE(OP_11110001\, process_unsupported) # 11110001
         @DECL_OPCODE(OP_11110010\, process_unsupported) # 11110010
         @DECL_OPCODE(OP_11110011\, process_unsupported) # 11110011
         @DECL_OPCODE(OP_11110100\, process_unsupported) # 11110100
         @DECL_OPCODE(OP_11110101\, process_unsupported) # 11110101
         @DECL_OPCODE(OP_11110110\, process_not)         # 11110110
         @DECL_OPCODE(OP_11110111\, process_not)         # 11110111
         @DECL_OPCODE(OP_11111000\, process_unsupported) # 11111000
         @DECL_OPCODE(OP_11111001\, process_unsupported) # 11111001
         @DECL_OPCODE(OP_11111010\, process_unsupported) # 11111010
         @DECL_OPCODE(OP_11111011\, process_unsupported) # 11111011
         @DECL_OPCODE(OP_11111100\, process_unsupported) # 11111100
         @DECL_OPCODE(OP_11111101\, process_unsupported) # 11111101
         @DECL_OPCODE(OP_11111110\, process_unsupported) # 11111110
         @DECL_OPCODE(OP_11111111\, process_unsupported) # 11111111


    MOD_R_M_STR_00000 db "bx + si$                "
    MOD_R_M_STR_00001 db "bx + di$                "
    MOD_R_M_STR_00010 db "bp + si$                "
    MOD_R_M_STR_00011 db "bp + di$                "
    MOD_R_M_STR_00100 db "si$                     "
    MOD_R_M_STR_00101 db "di$                     "
    MOD_R_M_STR_00110 db "tiesioginis adresas$    "
    MOD_R_M_STR_00111 db "bx$                     "
    MOD_R_M_STR_01000 db "bx + si + $             "
    MOD_R_M_STR_01001 db "bx + di + $             "
    MOD_R_M_STR_01010 db "bp + si + $             "
    MOD_R_M_STR_01011 db "bp + di + $             "
    MOD_R_M_STR_01100 db "si + $                  "
    MOD_R_M_STR_01101 db "di + $                  "
    MOD_R_M_STR_01110 db "bp + $                  "
    MOD_R_M_STR_01111 db "bx + $                  "
    MOD_R_M_STR_10000 db "bx + si + $             "
    MOD_R_M_STR_10001 db "bx + di + $             "
    MOD_R_M_STR_10010 db "bp + si + $             "
    MOD_R_M_STR_10011 db "bp + di + $             "
    MOD_R_M_STR_10100 db "si + $                  "
    MOD_R_M_STR_10101 db "di + $                  "
    MOD_R_M_STR_10110 db "bp + $                  "
    MOD_R_M_STR_10111 db "bx + $                  "

    W_REG_STR_0000 db "al$"
    W_REG_STR_0001 db "cl$"
    W_REG_STR_0010 db "dl$"
    W_REG_STR_0011 db "bl$"
    W_REG_STR_0100 db "ah$"
    W_REG_STR_0101 db "ch$"
    W_REG_STR_0110 db "dh$"
    W_REG_STR_0111 db "bh$"
    W_REG_STR_1000 db "ax$"
    W_REG_STR_1001 db "cx$"
    W_REG_STR_1010 db "dx$"
    W_REG_STR_1011 db "bx$"
    W_REG_STR_1100 db "sp$"
    W_REG_STR_1101 db "bp$"
    W_REG_STR_1110 db "si$"
    W_REG_STR_1111 db "di$"
    )
)