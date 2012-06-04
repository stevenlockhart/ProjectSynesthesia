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
  // Calculate maximum amplitude
  double max_band_amp = 0;
  unsigned int cur_band;
  for (cur_band = 0; cur_band < NUM_BANDS; cur_band++) {
    if (spec[cur_band] > max_band_amp) {
      max_band_amp = spec[cur_band];
    }
  }

  // Calculate colors
  double amp_mod = calculate_amp(spec);
 
  color_array *new = (color_array *)malloc(sizeof(color_array));
  
  for (cur_band = 0; cur_band < NUM_BANDS; cur_band++) {
    unsigned int amp = (unsigned int)((spec[cur_band] / max_band_amp) * 255);
    new->colors[cur_band].r = amp; //* amp * amp * amp_mod;
    new->colors[cur_band].g = amp; //* amp * amp * amp_mod;
    new->colors[cur_band].b = amp; //* amp * amp * amp_mod;

    c->colors[cur_band].r =
        ((c->colors[cur_band].r * 9) + new->colors[cur_band].r) / 10;
    c->colors[cur_band].g =
        ((c->colors[cur_band].g * 9) + new->colors[cur_band].g) / 10;
    c->colors[cur_band].b =
        ((c->colors[cur_band].b * 9) + new->colors[cur_band].b) / 10;
 }

  // TEMP
  printf("Color = {%d, %d, %d}\n",
         c->colors[15].r, c->colors[15].g, c->colors[15].b);

  return NUM_LEDS;
}
