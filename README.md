# diasm
diasm - simple x86 16-bit real mode instruction subset disassembler, for **MS-DOS** operating system

### Overview
diasm is a simple x86 16-bit real mode instruction subset disassembler, for **MS-DOS** operating system. Written in assembly with **tasm** compiler, basically proof of concept of writing disassembler in assembly.

### Supported instructions
- **mov** *all 6 scenarios*
- **out** *2 scenarios*
- **not** *4 scenarios*
- **rcr** *4 scenarios*
- **xlat** *1 scenarios*

### Implementation
Actually most interesting aspect of this program is code itself, for example

```c++
process_not:
    @PRINT_STR(offset not_str)

    mov w_val, al
    @MASK_VALUE(w_val, 00000001b)

    @RETRIEVE_NEXT_BYTE

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

    // process scenarios 01 - 11, same as 00

    not_continue:

    @PRINT_STR(offset endl_str)

    jmp inst_loop
```

Note that for an **assembly** code is pretty readable, now it is very easy to even add support for new instructions. 

Main benefit comes from **@JMP_EQL()**, **@MASK_VALUE()** and other macros. **Tasm** itself does not support such macros, these macros are resolved by my own preprocessor [link](https://github.com/AlexShukel/am08x24arc/tree/main/src/preprocessor). 

Probably no one will build this project, so I will not include or release this preprocessor, if you really need it, just open an issue in this repository.

> Sadly this time diasm is a asm framework ?

Cool looking widgets 
<img src="https://img.shields.io/github/license/Maksasj/blueb.js" alt="license">
  <img src="https://img.shields.io/github/stars/Maksasj/omni_reflector" alt="stars">

### Build
1. **Build manually**<br>
    First of all requirements:
    - Dosbox (an x86 emulator with Dos)
    - tasm (Should be installed in Dosbox) 
    - tlink (Should be installed in Dosbox)
    
## License
**diasm** is free and open source thing. All code in this repository is licensed under
- MIT License ([LICENSE.md](https://github.com/Maksasj/diasm/blob/master/LICENSE.md) or https://opensource.org/license/mit/)