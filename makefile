#makefile
CC = g++
#CFLAGS = -Wall
LDLIBS = -lstdc++ -lm

SRC = $(wildcard *.cpp)
OBJS = $(SRC:.cpp=.o)
DEPS  = $(SRC:.cpp=.h)
OUT      = main

$(OBJS): $(SRC) 
#	$(CC) -o $@ $^ 

 main: $(OBJS)
 # $(CC) -o main $(OBJS) 

.PHONY: clean
clean:
	rm -f $(OBJS) $(OUT)
