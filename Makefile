# contact: Mark Redekopp, Andrew Goodney

CC = clang++
# if needed, install from http://bits.usc.edu/cs103/compile/ or use g++ or clang++

LDFLAGS =
SRCS = bmplib.cpp
OBJ = $(SRCS:.cpp=.o)
FILTERSRC = filter.cpp bmplib.cpp
FILTEROBJ = $(FILTERSRC:.cpp=.o)

all: filter

filter: $(FILTEROBJ)
	$(CC) $(FILTEROBJ) -o filter

.cpp.o:
	$(CC) -O0 -g -c $<

bmplib.o : bmplib.h

clean:
	rm -f *.o filter

