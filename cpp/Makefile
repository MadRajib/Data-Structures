CC = g++ 
DEPS = lib.h
OBJ = program.o refineData.o hashlib.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< 

all: generate_object program clean

generate_object: hashlib.cpp refineData.cpp program.cpp
	$(CC) -c hashlib.cpp refineData.cpp
	$(CC) -c program.cpp

program: $(OBJ) 
	$(CC) -o $@ $^
	
clean:
	rm -f *.o  