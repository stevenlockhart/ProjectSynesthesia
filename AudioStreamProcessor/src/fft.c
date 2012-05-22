/*
 * Steven Lockhart
 *
 * FFT Wrapper
 */

#include <fftw3.h>

#include "fft.h"

int calculate_spectrum(fb_t buf, spec_t spec) {
  // Prepare input array for FFTW by converting buf to doubles
  double *fftw_in = fb_todoubles(buf);
  
  // Prepare output arrays for FFTW
  // TEMP
  unsigned int out_size = (buf->num_elements / 2) + 1;
  printf("FFTW out_size = %d\n", out_size);
  fftw_complex *fftw_out = 
      (fftw_complex *)fftw_malloc(sizeof(fftw_complex) * out_size);
                                  // * ((buf->num_elements / 2) + 1));

  // Create FFTW plan
  fftw_plan plan = fftw_plan_dft_r2c_1d(buf->num_elements, fftw_in, fftw_out,
                                        FFTW_ESTIMATE);

  // Compute DFT
  fftw_execute(plan);

  // Build spectrum histogram
  // TODO
  double freq;
  double amp;
  unsigned int n;
  spec->lo = 0; spec->md = 0; spec->hi = 0;
  for (n = 0; n < buf->num_elements; n++) {
    freq = (double)buf->num_elements / (n + 1);
    
    // TODO: Fix this fucking line
    //amp = (double)*(*(fftw_complex *)fftw_out[n]); // Yikes
    // TEMP
    //if (amp > 0) printf("Histogram Bar: {%8f, %8f}\n", freq, amp);
    
    // Build spectrum ranges
    // TODO: Move this.
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

  return n;
}
