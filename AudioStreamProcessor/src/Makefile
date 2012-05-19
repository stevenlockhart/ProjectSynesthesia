CC=gcc
CFLAGS=-Wall -c
BIN=../bin/
SOURCES=capture_main.c colors.c frame_buffer.c fft.c
OBJECTS=$(BIN)$(SOURCES:.c=.o)
EXECUTABLES=$(BIN)audio_stream_processor
TESTS=($BIN)caching_queue_test

all : $(EXECUTABLES) $(TESTS)

$(BIN)audio_stream_processor : $(OBJECTS)
	$(CC) $(CFLAGS) -g -lasound $(OBJECTS) -o $$(BIN)@

$(BIN)caching_queue_test : caching_queue.o caching_queue_test.c
	$(CC) $(CFLAGS) -g caching_queue.o -o ../bin/caching_queue_test caching_queue_test.c

$(BIN)capture_main.o : capture_main.c
	$(CC) $(CFLAGS) -lasound -o capture_main.o capture_main.c

$(BIN)colors.o : colors.c
	$(CC) $(CFLAGS) -o colors.o colors.c

$(BIN)frame_buffer.o : frame_buffer.c
	$(CC) $(CFLAGS) -o frame_buffer.o frame_buffer.c

$(BIN)fft.o : fft.c
	$(CC) $(CFLAGS) -o fft.o fft.c

clean :
	rm -f $(BIN)*

