/*
 * Steven Lockhart
 *
 * FFT Wrapper
 */

#include <fftw3.h>

#include "fft.h"

int calculate_spectrum(unsigned int n_frames, fb_t frame_buffer,
                       spectrum *spec) {

  fftw_complex *out = (fftw_complex *)fftw_malloc(sizeof(fftw_complex)
                                                  * ((n_frames / 2) + 1));
  // Convert frame_buffer to double[]
  double *in;
  in = fb_todoubles(frame_buffer);

  // Create FFTW plan
  fftw_plan plan = fftw_plan_dft_r2c_1d(fb_num_elements(frame_buffer), in, out,
                                        FFTW_ESTIMATE);

  // Compute DFT
  fftw_execute(plan);

  // Build spectrum histogram
  // TODO
  double freq;
  double amp;
  unsigned int n;
  for (n = 0; n < frame_buffer->num_elements; n++) {
    freq = (double)frame_buffer->num_elements / (n + 1);
    amp = (double)*(*(fftw_complex *)out[n]); // Yikes
    // TEMP
    //if (amp > 0) printf("Histogram Bar: {%8f, %8f}\n", freq, amp);
    
    // Build spectrum ranges
    if (amp > 0) {
      if (freq < 1000) {
        spec->lo = amp;
      } else if (1000 <= freq && freq < 10000) {
        spec->md = amp;
      } else {
        spec->hi = amp;
      }
    }
  }

  // TEMP
  printf("Spectrum: {%8f, %8f, %8f}\n",
  //         amp, amp, amp);
                     spec->lo, spec->md, spec->hi);

  // Update spectrum
  // TODO

  return n;
}
