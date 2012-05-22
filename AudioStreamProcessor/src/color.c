/*
 * Steven Lockhart
 *
 * Frequency Spectrum Trends to LED Color Values
 */

#include <stdio.h>

#include "color.h"
 
int calculate_colors(spec_t spec, colors_t colors) {
  int n;
  for (n = 0; n < NUM_LEDS; n++) {
    //while (spec->lo > 255) spec->lo /= 10;
    colors[n].r = (int)(spec->lo / 10000000.0 * 255);
    //while (spec->md > 255) spec->lo /= 10;
    colors[n].g = (int)(spec->md / 10000000.0 * 255);
    //while (spec->hi > 255) spec->lo /= 10;
    colors[n].b = (int)(spec->hi / 10000000.0 * 255);

    // TEMP
    // printf("Color: {%d, %d, %d}\n",
    //       colors[n].r, colors[n].g, colors[n].b);
  }

  return n;
}
