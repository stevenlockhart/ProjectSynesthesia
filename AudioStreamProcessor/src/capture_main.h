/*
 * Steven Lockhart
 *
 * AudioStreamProcessor
 *
 * Interupt-based audio stream capturer and analyzer.  Buffers the audio stream
 * from line-in on the audio card using the ALSA audio system.  Calculates the
 * frequency spectrum of the buffered sample.  Uses trends in the frequency
 * spectrum to determine what colors to assign the LEDs in the LED Array.
 */

#define NUM_LEDS 60
#define PACKET_SIZE 4096

#include <stdint.h>

#include "caching_queue.h"
#include "colors.h"
#include "spectrum.h"

typedef struct {
  uint8_t r;
  uint8_t g;
  uint8_t b;
  uint8_t a;
} color;

typedef struct {
  color colors[NUM_LEDS];
} color_array;

typedef struct {
  uint16_t l;
  uint16_t r;
} frame;

typedef struct caching_queue_data *frame_buffer_t;
typedef struct caching_queue_data *spectrum_buffer_t;
typedef struct color_array *color_array_t;
