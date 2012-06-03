CC=gcc
CFLAGS=-Wall -g
BIN=../bin/
EXECUTABLES=$(BIN)audio_stream_processor
SOURCES=capture_main.c colors.c frame_buffer.c fft.c led.c music.c
OBJECTS=$(SOURCES:.c=.o)
LIBS=-lasound -L:/usr/local/lib -lfftw3 -lm
#TESTS=$(BIN)caching_queue_test

all : $(EXECUTABLES) # $(TESTS)

# Primary executable
$(BIN)audio_stream_processor : $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) $(LIBS) -o $@

# CachingQueueTest (obsolete)
#$(BIN)caching_queue_test : caching_queue.o caching_queue_test.c
#	$(CC) $(CFLAGS) -c caching_queue.o -o $(BIN)caching_queue_test caching_queue_test.c

# Objects
.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

# Clean
clean :
	rm -f *.o
	rm -f $(BIN)*
