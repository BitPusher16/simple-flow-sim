# following makefile tutorial here:
# https://makefiletutorial.com/

# also following examples here:
# https://www.math.colostate.edu/~yzhou/computer/writemakefile.html
# "it is traditional to write the rule that links the program first, 
# followed by the compilation rules"

# rule syntax:
# output_filenames (targets) : input_filenames (dependencies)
# 	actions

# if no args given to make, it runs the first rule.

CC=gcc
CFLAGS=-I./include

bin/simple_flow_sim.exe: build/main.o
	$(CC) build/main.o -o bin/simple_flow_sim.exe

build/main.o: src/main.c
	$(CC) -c src/main.c -o build/main.o

clean:
	rm build/main.o
	rm bin/simple_flow_sim.exe
