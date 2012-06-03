/*
 * Steven Lockhart
 *
 * FFT Wrapper
 */

#include <fftw3.h>

#include "fft.h"

void bin_fft_term(double freq, double amp, spectrum_t spec) {
  unsigned int cur_band = 0;
  double cur_semitone = C0;
  while (cur_semitone < C8) {
    if ((freq > (cur_semitone * (1 - BAND_RAD))) &&
        (freq <= (cur_semitone * (1 + BAND_RAD)))) {
      spec[cur_band] += amp;
      
      //TEMP
      /*printf("Freq %f binned to bin %d around semitone %f\n",
             freq, cur_band, cur_semitone);*/

      break;
    }
    cur_semitone *= TONE_MUL;
    cur_band++;
  } 
}

int calculate_spectrum(unsigned int n_frames, fb_t frame_buffer,
                       spectrum_t spec) {

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
  double freq;
  double amp;
  unsigned int n;

  for (n = 0; n < NUM_BANDS; n++) spec[n] = 0;

  for (n = 0; n < frame_buffer->num_elements; n++) {
    freq = (double)frame_buffer->num_elements / (n + 1);
    amp = (double)*(*(fftw_complex *)out[n]); // Yikes

    if (amp > 0) bin_fft_term(freq, amp, spec);
  }

  /* TEMP
  printf("Spectrum: {");
  for (n = 0; n < NUM_BANDS; n++) printf("%8f", spec[n]);
  printf("}\n");*/

  return frame_buffer->num_elements;
}
