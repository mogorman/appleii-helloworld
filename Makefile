
all:
	ca65 -t apple2 hello.s
	ld65 -o hello.bin hello.o -C ../apple2.cfg
	cp cc65.dsk test.dsk
	java -jar ../ac.jar -cc65 test.dsk TEST B < hello.bin
	tokenize_asoft <loader.txt > apple_loader
	dos33 test.dsk SAVE A apple_loader HELLO

clean:
	rm -f hello.o hello.bin test.dsk apple_loader
test:
