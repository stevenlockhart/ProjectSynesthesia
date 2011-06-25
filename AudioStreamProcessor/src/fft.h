/*
 * Steven Lockhart
 *
 * FFT Wrapper
 *
 * Fast-Fourier-Transform interface for Discrete Fourier Transforms of real data
 * implemented with fftw3.2.2
 */

#include "frame_buffer.h"

typedef struct {
  // TEMP
  double lo;
  double md;
  double hi;
} spectrum;
//typedef struct spectrum *spectrum_t;

/*
 * Calculate Spectrum
 *
 * Performs a Discrete Fourier Transform on the audio data in the frame buffer
 * and updates the frequency spectrum with the results.
 *
 * Returns the number of frames analyzed on success or a negative error code on
 * failure.
 */
int calculate_spectrum(unsigned int n_frames, fb_t frame_buffer,
                       spectrum *spec);
