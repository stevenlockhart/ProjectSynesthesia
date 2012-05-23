/*
 * Steven Lockhart
 *
 * Calculate Colors
 */

#include <stdio.h>

#include "color.h"
 
int calculate_colors(freq_spec_t spec, color_array_t colors) {
  int i;
  for (i = 0; i < NUM_LEDS; i++) {
    //while (spec->lo > 255) spec->lo /= 10;
    colors[i].r = (int)(spec->lo / 10000000.0 * 255);
    //while (spec->md > 255) spec->lo /= 10;
    colors[i].g = (int)(spec->md / 10000000.0 * 255);
    //while (spec->hi > 255) spec->lo /= 10;
    colors[i].b = (int)(spec->hi / 10000000.0 * 255);

    // TEMP
    printf("Color: {%d, %d, %d}\n",
           colors[i].r, colors[i].g, colors[i].b);
  }

  return i;
}
