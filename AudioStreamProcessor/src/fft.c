/*
 * Steven Lockhart
 *
 * FFT Wrapper
 */

#include <fftw3.h>

#include <string.h>

#include "fft.h"

void bin_fft_term(double freq, double amp, spectrum_t spec) {
  unsigned int cur_band = 0;
  double cur_band_min_freq = MIN_FREQ;
  double cur_band_max_freq = MIN_FREQ * BAND_RATIO;
  
  while (cur_band < NUM_BANDS) {
    if ((freq > cur_band_min_freq) && (freq <= cur_band_max_freq)) {
      spec[cur_band] += amp;
   
      //TEMP
      // printf("Binning freq=%f with amp=%f to bin#%d\n", freq, amp, cur_band);
   
      break;
    }
    cur_band_min_freq = cur_band_max_freq;
    cur_band_max_freq *= BAND_RATIO;
    cur_band++;
  } 
}

int calculate_spectrum(unsigned int n_frames, fb_t frame_buffer,
                       spectrum_t spec, spec_slope_history_t spec_hist,
                       unsigned int i) {

  fftw_complex *out = (fftw_complex *)fftw_malloc(sizeof(fftw_complex)
                                                  * ((n_frames / 2) + 1));
  // Convert frame_buffer to double[]
  double *in;
  in = fb_todoubles(frame_buffer);

  // Create FFTW plan
  //printf("\t\t%d\t\t%d\n", fb_num_elements(frame_buffer), (n_frames / 2) + 1);
  fftw_plan plan = fftw_plan_dft_r2c_1d(fb_num_elements(frame_buffer), in, out,
                                        FFTW_ESTIMATE);

  // Compute DFT
  fftw_execute(plan);

  // Build spectrum histogram
  double freq;
  double amp;
  unsigned int n;

  //for (n = 0; n < NUM_BANDS; n++) spec[n] = 0;

  double *new_spec = (double *)malloc(sizeof(double) * NUM_BANDS);
  memset(new_spec, 0, sizeof(double) * NUM_BANDS);

  for (n = 0; n < frame_buffer->num_elements; n++) {
    freq = (double)frame_buffer->num_elements / (n + 1);
    amp = (double)*(*(fftw_complex *)out[n]); // Yikes

    if (amp > 0) bin_fft_term(freq, amp, new_spec);
  }

  for (n = 0; n < NUM_BANDS; n++) {
    spec_hist[i][n] = new_spec[n] - spec[n];
    spec[n] = new_spec[n];
  }

  // TEMP
  //printf("Spectrum: {");
  //for (n = 0; n < NUM_BANDS; n++) printf("%8f, ", new_spec[n]);
  //printf("}\n");

  fftw_free(out);
  free(new_spec);
  free(in);

  return frame_buffer->num_elements;
}
