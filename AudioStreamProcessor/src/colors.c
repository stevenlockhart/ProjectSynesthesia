/*
 * Steven Lockhart
 *
 * Frequency Spectrum Trends to LED Color Values
 */

#include <stdio.h>

#include "colors.h"
 
double max_amp = 0;

double calculate_amp(spectrum_t spec) {
  double amp = 0;
  int b;
  for (b = 0; b < NUM_BANDS; b++) {
    amp += spec[b];
  }

  printf("Amp = %f, MaxAmp = %f\n", amp, max_amp);

  if (amp > max_amp) max_amp = amp;

  return amp / max_amp;
}

int calculate_tonality(spectrum_t spec) {
  // TODO
  return 0;
}

void spectrum_to_rgb(int spec_val, color_t c) {
  // TODO
  c->r = 255;  c->g = 255;  c->b = 0;
}

int calculate_colors(spectrum_t spec, color_array *c) {
  // Shift colors
  int n; for (n = NUM_LEDS - 1; n > 0; n--) {
    c->colors[n].r = c->colors[n - 1].r; 
    c->colors[n].g = c->colors[n - 1].g; 
    c->colors[n].b = c->colors[n - 1].b; 
  }

  // Calculate new color
  int color_val = calculate_tonality(spec);
  spectrum_to_rgb(color_val, &(c->colors[0]));
  double amp_mod = calculate_amp(spec);
  c->colors[0].r *= amp_mod; 
  c->colors[0].g *= amp_mod; 
  c->colors[0].b *= amp_mod; 

  // TEMP
  printf("AmpMod = %f\tColor = {%d, %d, %d}\n", amp_mod,
         c->colors[0].r, c->colors[0].g, c->colors[0].b);

  return NUM_LEDS;
}
