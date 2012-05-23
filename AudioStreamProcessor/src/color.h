/*
 * Steven Lockhart
 *
 * Calculate Colors
 *
 * Transforms frequency spectrum to RGB color values
 */

#define NUM_LEDS 60

#include <stdint.h>

#include "frequency.h"

struct color {
  uint8_t r;
  uint8_t g;
  uint8_t b;
};
typedef struct color *color_array_t;

int calculate_colors(freq_spec_t spec, color_array_t colors);
