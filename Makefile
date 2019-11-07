#
# CSE30 Makefile
#
# we declare the object we want to build in the variable EXE
# we list the objects we want to compile (from c) in OBJS
#
# we provide a phony target clean to rm all the .o files
#

EXE = endorfp
OBJS = main.o endorfp2float.o
LIBS = 
CC = gcc 
CFLAGS = -g -O0
CFLAGS +=  --std=gnu99

.PHONY: clean

$(EXE) : $(OBJS)
	gcc -o $@ $(CFLAGS) $(OBJS) $(LIBS)

main.o : main.c
endorfp2float.o : endorfp2float.S
	gcc -c $(CFLAGS) -gstabs+ endorfp2float.S

clean :
	rm -f $(OBJS)
	rm $(EXE)

