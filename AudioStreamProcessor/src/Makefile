all : audio_stream_processor

audio_stream_processor : frame_buffer.o colors.o spectrum.o capture_main.c
	gcc -Wall -g -lasound frame_buffer.o colors.o spectrum.o -o ../bin/audio_stream_processor capture_main.c

test : caching_queue.o caching_queue_test.c
	gcc -Wall -g caching_queue.o -o ../bin/caching_queue_test caching_queue_test.c

caching_queue.o : caching_queue.c
	gcc -Wall -g -c -o caching_queue.o caching_queue.c

colors.o : colors.c
	gcc -Wall -g -c -o colors.o colors.c

frame_buffer.o : frame_buffer.c
	gcc -Wall -g -lasound -c -o frame_buffer.o frame_buffer.c

spectrum.o : spectrum.c
	gcc -Wall -g -c -o spectrum.o spectrum.c

clean :
	rm -f ../bin/audio_stream_processor
	rm -f caching_queue.o
	rm -f capture_main.o
	rm -f colors.o
	rm -f frame_buffer.o
	rm -f spectrum.o

