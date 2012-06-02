/*
 * Steven Lockhart
 *
 * Frequency Spectrum Trends to LED Color Values
 */

#include <stdio.h>

#include "colors.h"
 
int calculate_colors(spectrum *spec, color_array *c) {
  int n;
  for (n = 0; n < NUM_LEDS; n++) {
    //while (spec->lo > 255) spec->lo /= 10;
    c->colors[n].r = (int)(spec->lo / 10000000.0 * 255);
    //while (spec->md > 255) spec->lo /= 10;
    c->colors[n].g = (int)(spec->md / 10000000.0 * 255);
    //while (spec->hi > 255) spec->lo /= 10;
    c->colors[n].b = (int)(spec->hi / 10000000.0 * 255);

    // TEMP
    //printf("Color: {%d, %d, %d}\n",
    //       c->colors[n].r, c->colors[n].g, c->colors[n].b);
  }

  return n;
}
