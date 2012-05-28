CCC=gcc
CFLAGS=-I.
DEPS = led.h
OBJ = led.o main.o


%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

led: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)
