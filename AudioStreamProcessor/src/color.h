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

#ifndef COLOR_H
#define COLOR_H

#define NUM_LEDS 60

#include <stdint.h>

#include "fft.h"

struct color {
  uint8_t r;
  uint8_t g;
  uint8_t b;
};
typedef struct color *colors_t;

int calculate_colors(spec_t spec, colors_t colors);

#endif
