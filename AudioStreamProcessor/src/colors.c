/*
 * Steven Lockhart
 *
 * Frequency Spectrum Trends to LED Color Values
 */

#include <stdio.h>

#include "colors.h"
 
/*double max_amp = 0;

double calculate_amp(spectrum_t spec) {
  double amp = 0;
  int b;
  for (b = 0; b < NUM_BANDS; b++) {
    amp += spec[b];
  }

  // TEMP
  //printf("Amp = %f, MaxAmp = %f\n", amp, max_amp);

  if (amp > max_amp) max_amp = amp;

  return amp / max_amp;
}*/

void spectrum_to_rgb(int spec_val, struct color *c) {
  // TODO
  c->r = 255;  c->g = 255;  c->b = 0;
}

int calculate_colors(spectrum_t spec, spec_slope_history_t spec_hist,
                     color_history_t c, unsigned int i) {
  // Calculate maximum amplitude
  double max_band_amp = 0;
  unsigned int cur_band;
  for (cur_band = 0; cur_band < NUM_BANDS; cur_band++) {
    if (spec[cur_band] > max_band_amp) {
      max_band_amp = spec[cur_band];
    }
  }

  // Calculate colors
  for (cur_band = 0; cur_band < NUM_BANDS; cur_band++) {
    // Calculate color bias
    
    // TEMP use brightness amplitude of band
    unsigned int amp = (unsigned int)((spec[cur_band] / max_band_amp) * 255);
    c[i][cur_band].r = amp;
    c[i][cur_band].g = amp;
    c[i][cur_band].b = amp;
  }

  // TEMP
  //printf("Color = {%d, %d, %d}\n",
  //       c->colors[15].r, c->colors[15].g, c->colors[15].b);

  return NUM_LEDS;
}
