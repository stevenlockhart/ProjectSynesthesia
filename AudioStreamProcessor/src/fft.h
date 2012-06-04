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

#define PACKET_SIZE 20480
#define WINDOW_RATIO 32
#define MAX_FREQ (PACKET_SIZE / 4)
#define MIN_FREQ 20
#define NUM_BANDS (NUM_LEDS / 2)
#define BAND_RATIO pow((MAX_FREQ / MIN_FREQ), (1.0 / NUM_BANDS))

#include <math.h>

#include "colors.h"
#include "frame_buffer.h"

typedef double *spectrum_t;
typedef double **spec_slope_history_t;

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
                       spectrum_t spec, spec_slope_history_t spec_hist,
                       unsigned int i);

/*
 * Bin FFT Term
 *
 * Bucket sorts the FFT output terms.  The amplitude of each FFT output term is
 * added to the total intensity of the frequency band that the FFT output term's
 * frequency falls in in the spectrum.
 */
void bin_fft_term(double freq, double amp, spectrum_t spec);

#endif
