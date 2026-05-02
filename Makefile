NAKEN_ASM = C:\naken_asm-24\naken_asm.exe

SRC = source/kernel/start.asm


all: build

build:
	@if not exist bin mkdir bin
	$(NAKEN_ASM) -I source -l -type elf -o bin/midnightos.elf $(SRC)
	@echo .
	@echo Compiled!

clean:

	del /Q bin\*.elf
	del /Q bin\*.lst
	del /Q bin\*.bin