#makefile
CC = g++
#CFLAGS = -Wall
LDLIBS = -lstdc++ -lm

SRC = $(wildcard *.cpp)
OBJ = $(SRC:.cpp=.o)
DEP = $(SRC:.cpp=.h)
OUT = main

 $(OUT): $(OBJ)
		$(CC) $^ -o $(OUT) 

$(OBJ): $(SRC) 
		$(CC) -c $^ 

.PHONY: clean
clean:
	rm -f $(OBJ) $(OUT)
