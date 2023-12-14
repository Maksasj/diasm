tasm test.asm
tlink /t test.obj

tasm diasmr.asm
tlink /v diasmr.obj
diasmr.exe > pp.txt