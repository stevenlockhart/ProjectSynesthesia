CC=gcc
CFLAGS=-Wall -c
BIN=../bin/
SOURCES=capture_main.c colors.c frame_buffer.c fft.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLES=$(BIN)audio_stream_processor
#TESTS=$(BIN)caching_queue_test

all : $(EXECUTABLES) # $(TESTS)

$(BIN)audio_stream_processor : $(OBJECTS)
	$(CC) -Wall -g -lasound $(OBJECTS) -o $@

#$(BIN)caching_queue_test : caching_queue.o caching_queue_test.c
#	$(CC) $(CFLAGS) -g caching_queue.o -o $(BIN)caching_queue_test caching_queue_test.c

capture_main.o : capture_main.c
	$(CC) $(CFLAGS) -lasound -o capture_main.o capture_main.c
	
colors.o : colors.c
	$(CC) $(CFLAGS) -o colors.o colors.c

frame_buffer.o : frame_buffer.c
	$(CC) $(CFLAGS) -o frame_buffer.o frame_buffer.c

fft.o : fft.c
	$(CC) $(CFLAGS) -o fft.o fft.c

clean :
	rm -f *.o
	rm -f $(BIN)*
