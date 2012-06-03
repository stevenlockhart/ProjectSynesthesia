/*
 * Steven Lockhart
 *
 * Frequency Spectrum to LED Color Values
 *
 * Approximates the derivative of the amplitude of each frequency range in a
 * frequency spectrum and calculates the color value for each LED in the LED
 * Array based on sign and amplitude of these derivatives and the overall
 * amplitude of the audio sample.
 */

#define NUM_LEDS 60

#include <stdint.h>

#include "fft.h"

typedef struct color {
  uint8_t r;
  uint8_t g;
  uint8_t b;
} color;
typedef struct color *color_t;

typedef struct {
  color colors[NUM_LEDS];
} color_array;
typedef struct color_array *colors_t;

int calculate_colors(spectrum_t spec, color_array *c);
