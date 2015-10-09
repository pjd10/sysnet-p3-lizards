CFLAGS = -g -lrt -pthread -Wall
CC = gcc

objects =  lizard.o 

test: $(objects)
	$(CC) $(CFLAGS) -o lizard $(objects)

lizard.o: lizard.c lizard.h 
.PHONY : clean
clean: 
	rm lizard $(objects)
