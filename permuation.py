reg = [
    "al",
    "cl",
    "dl",
    "bl",
    "ah",
    "ch",
    "dh",
    "bh",
    "ax",
    "cx",
    "dx",
    "bx",
    "sp",
    "bp",
    "si",
    "di"
]

modrm = [
    "byte ptr [bx + si]", # mod 00
    "byte ptr [bx + di]", 
    "byte ptr [bp + si]", 
    "byte ptr [bp + di]", 
    "byte ptr [bx + si]", 
    "byte ptr [bx + di]", 
    "byte ptr [bp + si]", 
    "byte ptr [bp + di]", 
    "byte ptr [si]",
    "byte ptr [di]",
    "byte ptr ds:0002h",
    "byte ptr [bx]",
    "byte ptr [bx + si + 11h]", # mod 01
    "byte ptr [bx + di + 11h]",
    "byte ptr [bp + si + 11h]",
    "byte ptr [bp + di + 11h]",
    "byte ptr [si + 11h]",
    "byte ptr [di + 11h]",
    "byte ptr [bp + 11h]",
    "byte ptr [bx + 11h]",
    "byte ptr [bx + si + 1111h]", # mod 10
    "byte ptr [bx + di + 1111h]",
    "byte ptr [bp + si + 1111h]",
    "byte ptr [bp + di + 1111h]",
    "byte ptr [si + 1111h]",
    "byte ptr [di + 1111h]",
    "byte ptr [bp + 1111h]",
    "byte ptr [bx + 1111h]",
    "al", # mod 11
    "cl",
    "dl",
    "bl",
    "ah",
    "ch",
    "dh",
    "bh",
    "ax",
    "cx",
    "dx",
    "bx",
    "sp",
    "bp",
    "si",
    "di"
]

def generate_mov_1():
    for first in modrm:
        for second in modrm:
            print("mov " + first + ", " + second)


generate_mov_1()