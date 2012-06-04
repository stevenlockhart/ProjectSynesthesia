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

#ifndef COLORS_H
#define COLORS_H

#define NUM_LEDS 60
#define NUM_OLD_VALS 6

#include <stdint.h>

#include "fft.h"

struct color {
  uint8_t r;
  uint8_t g;
  uint8_t b;
};
struct color_sum {
  uint32_t r;
  uint32_t g;
  uint32_t b;
};
typedef struct color *colors_t;

/*typedef struct {
  color colors[NUM_LEDS];
} color_array;
typedef struct color_array *colors_t;*/
typedef colors_t *color_history_t;

//int calculate_colors(spectrum_t spec, color_history_t c, unsigned int i);

#endif
