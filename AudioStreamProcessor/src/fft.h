/*
 * Steven Lockhart
 *
 * FFT Wrapper
 *
 * Fast-Fourier-Transform interface for Discrete Fourier Transforms of real data
 * implemented with fftw3.2.2
 */

#ifndef FFT_H
#define FFT_H

#include "frame_buffer.h"

struct spec_data {
  // TEMP
  double lo;
  double md;
  double hi;
};
typedef struct spec_data *spec_t;

/*
 * Calculate Spectrum
 *
 * Performs a Discrete Fourier Transform on the audio data in the frame buffer
 * and updates the frequency spectrum with the results.
 *
 * Returns the number of frames analyzed on success or a negative error code on
 * failure.
 */
int calculate_spectrum(fb_t buf, spec_t spec);

#endif
