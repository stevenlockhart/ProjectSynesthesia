/*
 * Steven Lockhart
 *
 * Frequency Spectrum Trends to LED Color Values
 */

#include <stdio.h>
#include <string.h>

#include "colors.h"
 
void spectrum_to_rgb(int h, struct color *clr) {
  double s = 1;
  double v = 1;
  double c = v * s;
  double hp = h / 60.0;
  int mod = ((int)hp % 2) - 1;  if (mod < 1) mod *= -1;
  double x = (c * (1.0 - mod));

  double rgb[3] = {0.0, 0.0, 0.0};
  if (0 <= hp && hp < 1) {
    rgb[0] = c;  rgb[1] = x;  rgb[2] = 0;
  } else  if (1 <= hp && hp < 2) {
    rgb[0] = x;  rgb[1] = c;  rgb[2] = 0;
  } else  if (2 <= hp && hp < 3) {
    rgb[0] = 0;  rgb[1] = c;  rgb[2] = x;
  } else  if (3 <= hp && hp < 4) {
    rgb[0] = 0;  rgb[1] = x;  rgb[2] = c;
  } else  if (4 <= hp && hp < 5) {
    rgb[0] = x;  rgb[1] = x;  rgb[2] = c;
  } else  if (5 <= hp && hp < 6) {
    rgb[0] = c;  rgb[1] = 0;  rgb[2] = x;
  } else {
    rgb[0] = 0;  rgb[1] = 0;  rgb[2] = 0; 
  }

  double m = v - c;
  rgb[0] += m;  rgb[1] += m;  rgb[2] += m;

  clr->r = (uint8_t)(rgb[0] * 255);
  clr->g = (uint8_t)(rgb[1] * 255);
  clr->b = (uint8_t)(rgb[2] * 255);
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

  // Calculate maximum color value
  double max_color_mag = 0;
  for (cur_band = 0; cur_band < NUM_BANDS; cur_band++) {
    if ((spec[cur_band] - spec_hist[i][cur_band]) > max_color_mag) {
      max_color_mag = (spec[cur_band] - spec_hist[i][cur_band]);
    }
  }

  // Calculate colors
  struct color clrs[NUM_BANDS];
  memset(clrs, 0, sizeof(struct color) * NUM_BANDS);
  for (cur_band = 0; cur_band < NUM_BANDS; cur_band++) {
    // Calculate color value
    double color_val = 0;
    int v;
    for (v = 0; v < NUM_OLD_VALS -1; v++) {
      double val = spec_hist[v][cur_band] - spec_hist[v + 1][cur_band];
      if (val < 0) val *= -1;
      color_val += val;
    }
    color_val /= NUM_OLD_VALS;
    color_val = 1.0 - (color_val / (max_color_mag * 0.1));
    if (color_val < 0) color_val = 0;
    printf("color_val = %f\n", color_val);
    spectrum_to_rgb((color_val * 360),
                    &(clrs[cur_band]));

    // Apply intensity modulation
    double amp = (spec[cur_band] / max_band_amp);
    c[i][cur_band].r = (uint8_t)(clrs[cur_band].r * amp);
    c[i][cur_band].g = (uint8_t)(clrs[cur_band].g * amp);
    c[i][cur_band].b = (uint8_t)(clrs[cur_band].b * amp);
  }
/*
  c[i][0].r = clrs[0].r;  c[i][0].g = clrs[0].g;  c[i][0].b = clrs[0].b;
  for (cur_band = 1; cur_band < NUM_BANDS - 1; cur_band++) {
    int r = (clrs[i - 1].r + (4 * clrs[i].r) + clrs[i + 1].r) / 6;
    int g = (clrs[i - 1].g + (4 * clrs[i].g) + clrs[i + 1].g) / 6;
    int b = (clrs[i - 1].b + (4 * clrs[i].b) + clrs[i + 1].b) / 6;
    c[i][cur_band].r = (uint8_t)r;
    c[i][cur_band].g = (uint8_t)g;
    c[i][cur_band].b = (uint8_t)b;
  }*/
  c[i][29].r = clrs[29].r;  c[i][29].g = clrs[29].g;  c[i][29].b = clrs[29].b;

  // TEMP
  //printf("Color = {%d, %d, %d}\n",
  //       c->colors[15].r, c->colors[15].g, c->colors[15].b);

  return NUM_LEDS;
}
