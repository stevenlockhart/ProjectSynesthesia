/*
 * Steven Lockhart
 *
 * Frequency Spectrum Trends to LED Color Values
 */

#include <stdio.h>
#include <string.h>

#include "colors.h"
#include "music.h"

double max_amp = 0;
double max_tonality_gap = 0;

double calculate_amp(spectrum_t spec) {
  double amp = 0;
  int b;
  for (b = 0; b < NUM_BANDS; b++) {
    amp += spec[b];
  }

  //printf("Amp = %f, MaxAmp = %f\n", amp, max_amp);

  if (amp > max_amp) max_amp = amp;

  return amp / max_amp;
}

double calculate_tonality(spectrum_t spec) {
  unsigned int cur_semitone;
  unsigned int cur_octave;

  // Combine As, A#s, Bs, etc.
  double semitone_amps[NUM_SEMITONES];
  memset(semitone_amps, 0, sizeof(double) * NUM_SEMITONES);
  for (cur_semitone = C; cur_semitone <= B; cur_semitone++) {
    for (cur_octave = 0; cur_octave < NUM_OCTAVES; cur_octave++) {
      semitone_amps[cur_semitone] += spec[cur_semitone * cur_octave];
    }
  }

  // Build key-weights
  unsigned int cur_key;
  double key_sums[NUM_KEYS];
  memset(key_sums, 0, sizeof(double) * NUM_KEYS);
  for (cur_key = 0; cur_key < NUM_KEYS; cur_key++) {
    for (cur_semitone = 0; cur_semitone < NUM_SEMITONES; cur_semitone++) {
      key_sums[cur_key] += 
        (semitone_amps[cur_semitone] * keys[cur_key][cur_semitone]);
    }
  }

  // Determine tonality
  double cur_max_key_weight = 0;
  double cur_min_key_weight = key_sums[0];
  for (cur_key = 0; cur_key < NUM_KEYS; cur_key++) {
    if (key_sums[cur_key] > cur_max_key_weight) {
      cur_max_key_weight = key_sums[cur_key];
    } else if (key_sums[cur_key] < cur_min_key_weight) {
      cur_min_key_weight = key_sums[cur_key];
    }
  }
  if ((cur_max_key_weight - cur_min_key_weight) > max_tonality_gap) {
    max_tonality_gap = cur_max_key_weight - cur_min_key_weight;
  }

  /*printf("%f, %f, %f -- %f\n",
         cur_max_key_weight, cur_min_key_weight, max_tonality_gap,
         (((cur_max_key_weight - cur_min_key_weight) / max_tonality_gap) - 0.5) * 2);*/
  return ((cur_max_key_weight - cur_min_key_weight) / max_tonality_gap) * 360;
}

void spectrum_to_rgb(double spec_val, color_t c) {
  double c_ = 255;
  double h_prime = spec_val / 60;
  double mod = ((int)h_prime % 2) - 1; if (mod < 0) mod *= -1; 
  double x = c_ * mod;
  
  if (0 <= h_prime && h_prime < 1) {
    c->r = c_;  c->g = x;  c->b = 0;
  } else if (1 <= h_prime && h_prime < 2) { 
    c->r = x;  c->g = c_;  c->b = 0;
  } else if (2 <= h_prime && h_prime < 3) { 
    c->r = 0;  c->g = c_;  c->b = x;
  } else if (3 <= h_prime && h_prime < 4) { 
    c->r = 0;  c->g = x;  c->b = c_;
  } else if (4 <= h_prime && h_prime < 5) { 
    c->r = x;  c->g = 0;  c->b = c_;
  } else if (5 <= h_prime && h_prime < 6) { 
    c->r = c_;  c->g = 0;  c->b = x;
  } else {
    c->r = 0;  c->g = 0;  c->b = 0;
  }
}

int calculate_colors(spectrum_t spec, color_array *c) {
  // Shift colors
  /*int n; for (n = NUM_LEDS - 1; n > 0; n--) {
    c->colors[n].r = c->colors[n - 1].r; 
    c->colors[n].g = c->colors[n - 1].g; 
    c->colors[n].b = c->colors[n - 1].b; 
  }*/

  // Calculate new color
  double color_val = calculate_tonality(spec);
  spectrum_to_rgb(color_val, &(c->colors[0]));

  // TEMP
  //printf("color_val %f\n", color_val);

  int n; for (n = 0; n < NUM_LEDS; n++) {
  double amp_mod = calculate_amp(spec);
  c->colors[n].r = c->colors[0].r * amp_mod; 
  c->colors[n].g = c->colors[0].g * amp_mod; 
  c->colors[n].b = c->colors[0].b * amp_mod; 
  }
  // TEMP
  /*printf("AmpMod = %f\tColor = {%d, %d, %d}\n", amp_mod,
         c->colors[0].r, c->colors[0].g, c->colors[0].b);*/

  return NUM_LEDS;
}
