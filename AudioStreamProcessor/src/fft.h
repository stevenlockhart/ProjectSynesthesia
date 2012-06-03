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

#define C0 16.35
#define C8 4186.01
#define NUM_BANDS 96
#define TONE_MUL 1.05946414 // Multiply a frequency by this to increase by one
                            // semitone
#define BAND_RAD ((TONE_MUL - 1) / 2) // Multiple a semitone by this to get
                                      // the half of the width of the
                                      // corresponding spectrum band

#include "frame_buffer.h"

typedef double *spectrum_t;

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
                       spectrum_t spec);

/*
 * Bin FFT Term
 *
 * Bucket sorts the FFT output terms.  The amplitude of each FFT output term is
 * added to the total intensity of the frequency band that the FFT output term's
 * frequency falls in in the spectrum.
 */
void bin_fft_term(double freq, double amp, spectrum_t spec);

#endif
