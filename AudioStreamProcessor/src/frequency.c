/*
 * Steven Lockhart
 *
 * FFTW Wrapper
 */

#include <fftw3.h>

#include "frequency.h"

int calculate_spectrum(frame_buf_t buf, freq_spec_t spec) {

  fftw_complex *fft_out = (fftw_complex *)fftw_malloc(sizeof(fftw_complex)
                                                  * ((buf->size / 2) + 1));
  // Convert frame_buffer to double[]
  double *fft_in = fb_todoubles(buf);

  // Create FFTW plan
  fftw_plan plan = fftw_plan_dft_r2c_1d(buf->size, fft_in, fft_out,
                                        FFTW_ESTIMATE);

  // Compute DFT
  fftw_execute(plan);

  // Build spectrum histogram
  // TODO
  double freq;
  double amp;
  unsigned int i;
  spec->lo = 0; spec->md = 0; spec->hi = 0;
  for (i = 0; i < buf->size; i++) {
    freq = (double)buf->size / (i + 1);
    amp = (double)*(*(fftw_complex *)fft_out[i]); // Yikes
    // TEMP
    //if (amp > 0) printf("Histogram Bar: {%8f, %8f}\n", freq, amp);
    
    // Build spectrum ranges
    if (amp > 0) {
      if (freq < 1000) {
        spec->lo += amp;
      } else if (1000 <= freq && freq < 10000) {
        spec->md += amp;
      } else {
        spec->hi += amp;
      }
    }
  }

  // TEMP
  printf("Spectrum: {%8f, %8f, %8f}\n",
         spec->lo, spec->md, spec->hi);

  // Update spectrum
  // TODO

  return i;
}
