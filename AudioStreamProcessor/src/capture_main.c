/*
 * Steven Lockhart
 *
 * AudioStreamProcessor
 */

#define NUM_LEDS 60
#define PACKET_SIZE 4096

#include <stdio.h>
#include <stdlib.h>
#include <alsa/asoundlib.h>

#include "capture_main.h"

/*
 * Capture Callback
 *
 * Captures up to PACKET_SIZE and at least available_frames frames from the
 * audio interface and enqueues them into the frame buffer.
 *
 * Returns the number of frames buffered or -1 in the event of an error.
 */
int capture_callback(unsigned int available_frames,
                     frame_buffer_t frame_buffer) {
  // TODO
  return 0;
}

/*
 * Calculate Spectrum
 *
 * Calculates the frequency spectrum of the frames in the frame buffer and
 * enqueues the frequency spectrum into the spectrum buffer.
 *
 * Returns the number of frames analyzed or -1 in the event of an error.
 */
int calculate_spectrum(frame_buffer_t frame_buffer,
                       spectrum_buffer_t spectrum_buffer) {
  // TODO
  return 0;
}

/*
 * Update Colors
 *
 * Uses the trends in the frequency spectrum in the spectrum buffer to update
 * color of the LEDs in the LED Array.
 *
 * Returns the number of LEDs updated or -1 in the event of an error.
 */
int update_colors(spectrum_buffer_t spectrum_buffer,
                  color_array_t led_array) {
  // TODO
  return 0;
}

/*
 * Main
 */
int main(int argc, char **argv) {
  /* Set up ALSA Stream */
  int err;
  snd_pcm_t *pcm_handle;
  char *pcm_name = strdup("plughw:0,0"); // TEMP: Hardcoded
  snd_pcm_hw_params_t *hw_params;
  snd_pcm_sw_params_t *sw_params;

  // Open PCM Stream
  if ((err = snd_pcm_open(&pcm_handle, pcm_name, SND_PCM_STREAM_CAPTURE, 0))
      < 0) {
    fprintf(stderr, "Cannot open audio device %s (%s)\n",
            pcm_name, snd_strerror(err));
    exit(1);
  }

  // Allocate hardware parameters
  if ((err = snd_pcm_hw_params_malloc(&hw_params)) < 0) {
    fprintf(stderr, "Cannot allocate hardware parameter structure (%s)\n",
            snd_strerror(err));
    exit(1);
  }

  // Initialize hardware parameters
  if ((err = snd_pcm_hw_params_any(pcm_handle, hw_params)) < 0) {
    fprintf(stderr, "Cannot initialize hardware parameter structure (%s)\n",
            snd_strerror(err));
    exit(1);
  }

  // Set stream access type (Interleaved)
  if ((err = snd_pcm_hw_params_set_access(pcm_handle, hw_params,
       SND_PCM_ACCESS_RW_INTERLEAVED)) < 0) {
    fprintf(stderr,
            "Cannot set access type: SND_PCM_ACCESS_RW_INTERLEAVED (%s)\n",
            snd_strerror(err));
    exit(1);
  }

  // Set stream format (16bit Little endian)
  if ((err = snd_pcm_hw_params_set_format(pcm_handle, hw_params,
       SND_PCM_FORMAT_S16_LE)) < 0) {
    fprintf(stderr, "Cannot set sample format: SND_PCM_FORMAT_S16_LE (%s)\n",
            snd_strerror(err));
    exit(1);
  }
    
  // Set sample rate (44100)
  if ((err = snd_pcm_hw_params_set_rate(pcm_handle, hw_params, 44100, 0))
      < 0) {
    fprintf(stderr, "Cannot set sample rate: 44100 (%s)\n", snd_strerror(err));
    exit(1);
  }

  // Set channel count (Stereo)
  if ((err = snd_pcm_hw_params_set_channels(pcm_handle, hw_params, 2)) < 0) {
    fprintf(stderr, "Cannot set channel count: 2 (%s)\n", snd_strerror(err));
    exit(1);
  }

  // Send hardware parameters
  if ((err = snd_pcm_hw_params(pcm_handle, hw_params)) < 0) {
    fprintf(stderr, "Cannot set hardware parameters:\n"
                    "\tAccess Type: SND_PCM_ACCESS_RW_INTERLEAVED\n"
                    "\tSample Format: SND_PCM_FORMAT_S16_LE\n"
                    "\tSample Rate: 44100Hz\n"
                    "\tChannel Count: 2\n"
                    "(%s)\n", snd_strerror(err));
    exit(1);
  }
  snd_pcm_hw_params_free(hw_params);

  /* Configure this ALSA session to interrupt whenever 4096 or more frames of
   * captured audio is available to be processed */

  // Allocate software parameters
  if ((err = snd_pcm_sw_params_malloc(&sw_params)) < 0) {
    fprintf(stderr, "Cannot allocate software parameters structure (%s)\n",
            snd_strerror(err));
    exit(1);
  }

  // Initialize software parameters
  if ((err = snd_pcm_sw_params_current(pcm_handle, sw_params)) < 0) {
    fprintf(stderr, "Cannot initialize software parameters structure (%s)\n",
            snd_strerror(err));
    exit(1);
  }

  // Set available frames minimum (4096)
  if ((err = snd_pcm_sw_params_set_avail_min(pcm_handle, sw_params, 4096))
      < 0) {
    fprintf(stderr, "Cannot set minimum available frames: 4096 (%s)\n",
            snd_strerror(err));
    exit(1);
  }

  // Set start threshold
  if ((err = snd_pcm_sw_params_set_start_threshold(pcm_handle, sw_params, 0U))
      < 0) {
    fprintf(stderr, "Cannot set start threshold: 0U (%s)\n", snd_strerror(err));
    exit(1);
  }

  // Send software parameters
  if ((err = snd_pcm_sw_params(pcm_handle, sw_params)) < 0) {
    fprintf(stderr, "Cannot set software parameters:\n"
                    "\tMinimum available frames: 4096\n"
                    "\tStart threshold: 0U\n"
                    "(%s)\n", snd_strerror(err));
    exit(1);
  }

  // Prepare PCM device
  if ((err = snd_pcm_prepare(pcm_handle)) < 0) {
    fprintf(stderr, "Cannot prepare audio interface for use (%s)\n",
            snd_strerror(err));
    exit(1);
  }

  /* Set up internal data structures */
  frame_buffer_t frame_buffer = create(PACKET_SIZE);
  spectrum_buffer_t spectrum_buffer = NULL;
  color_array_t led_array = NULL;
  // TODO

  /* Mainloop */
  while (1) {
    int frames_available;
    int frames_buffered;
    
    // Wait until the interface has enough data, or one second has elapsed
    // TEMP: Use a shorter time than one second (needs tuning)
    if ((err = snd_pcm_wait(pcm_handle, 1000)) < 0) {
      fprintf(stderr, "Poll failed (%s)\n", snd_strerror(err));
      break;
    }

    // Find out how many frames the interface has available
    if ((frames_available = snd_pcm_avail_update(pcm_handle)) < 0) {
      if (frames_available == -EPIPE) {
        fprintf(stderr, "An xrun error occured\n");
        break;
      } else {
        fprintf(stderr, "unknown snd_pcm_avail_update valued returned (%d)\n",
                frames_available);
        break;
      }
    }

    // Capture the available frames
    if ((frames_buffered = capture_callback(frames_available, frame_buffer))
        != PACKET_SIZE) {
      fprintf(stderr, "Capture callback failed\n");
      break;
    }

    // Calculate spectrum
    if (calculate_spectrum(frame_buffer, spectrum_buffer) !=
        caching_queue_num_elements(frame_buffer)) {
      fprintf(stderr, "Calculate spectrum failed\n");
      break;
    }

    // Calculate color values
    if (update_colors(spectrum_buffer, led_array) != NUM_LEDS) {
      fprintf(stderr, "Update colors failed\n");
      break;
    }
  }
 
  snd_pcm_close(pcm_handle);
  exit(0);
}
