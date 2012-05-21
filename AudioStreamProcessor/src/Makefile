CC=gcc
CFLAGS=-Wall -g
BIN=../bin/
SOURCES=capture_main.c colors.c frame_buffer.c fft.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLES=$(BIN)audio_stream_processor
#TESTS=$(BIN)caching_queue_test

all : $(EXECUTABLES) # $(TESTS)

$(BIN)audio_stream_processor : $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -lasound -L:/usr/local/lib -lfftw3 -lm -o $@

#$(BIN)caching_queue_test : caching_queue.o caching_queue_test.c
#	$(CC) $(CFLAGS) -c caching_queue.o -o $(BIN)caching_queue_test caching_queue_test.c

capture_main.o : capture_main.c
	$(CC) $(CFLAGS) -c -o capture_main.o capture_main.c
	
colors.o : colors.c
	$(CC) $(CFLAGS) -c -o colors.o colors.c

frame_buffer.o : frame_buffer.c
	$(CC) $(CFLAGS) -c -o frame_buffer.o frame_buffer.c

fft.o : fft.c
	$(CC) $(CFLAGS) -c -o fft.o fft.c

clean :
	rm -f *.o
	rm -f $(BIN)*
