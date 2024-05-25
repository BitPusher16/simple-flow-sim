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

#CC=gcc
#CFLAGS=-I./include
#
#bin/simple_flow_sim.exe: build/main.o
#	$(CC) build/main.o -o bin/simple_flow_sim.exe
#
#build/main.o: src/main.c
#	$(CC) -c src/main.c -o build/main.o
#
#clean:
#	rm build/main.o
#	rm bin/simple_flow_sim.exe

# $@ is target name.
# $? is all prerequisites newer than target.
# $^ is all prerequisites.

CC=gcc
INCLUDES=-I./include
CFLAGS=-g
LIBS=-lm
_OBJECTS=main.o
OBJECTS=$(patsubst %.o,build/%.o,$(_OBJECTS))

bin/simple_flow_sim.exe: $(OBJECTS)
	$(CC) $? -o $@ $(LIBS)

build/%.o: src/%.c
	$(CC) $(INCLUDES) $(CFLAGS) -c $? -o $@

clean:
	rm build/main.o
	rm bin/simple_flow_sim.exe
