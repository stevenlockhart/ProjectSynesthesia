/*
 * Steven Lockhart
 *
 * AudioStreamProcessor
 *
 * Interrupt-based audio stream capturer and analyzer.  Buffers the audio
 * stream from line-in on the audio card using the ALSA audio system.  
 * Calculates the frequency spectrum of the buffered sample.  Uses the
 * frequency spectrum to determine what colors to assign to the LEDs in the LED
 * Array
 */

#define PACKET_SIZE 20480
#define WINDOW_RATIO 10

#include <stdio.h>
#include <stdlib.h>
#include <alsa/asoundlib.h>

#include "colors.h"
#include "fft.h"
#include "frame_buffer.h"
#include "../../LEDArrayController/lib/led.h"

/* 
 * Capture Callback
 *
 * Captures up to PACKET_SIZE frames or at least all available_frames from the
 * PCM capture stream and enqueues them into the frame buffer.
 *
 * Returns the number of frames buffered or a negative error code.
 */
int capture_callback(snd_pcm_t *pcm_handle,
                     unsigned int available_frames,
                     fb_t frame_buffer) {
  frame buf[available_frames];
  snd_pcm_readi(pcm_handle, &buf, available_frames);

  // printf("First frame = {%d, %d}\n", buf[0].l, buf[0].r);

  // TODO: Try to get available_frames frames from the pcm device to the
  // frame_buffer
 
  int f;
  for (f = 0; f < available_frames; f++) {
    //frame f;
    //snd_pcm_readi(pcm_handle, &f, 1);
    fb_enqueue(frame_buffer, buf[f]);
  }

  return 0;
}

/*
 * Main
 */
int main(int argc, char **argv) {
  /* Set up ALSA Stream */
  int err;
  snd_pcm_t *pcm_handle;
  char *pcm_name = strdup("hw:1,0"); // TEMP: Hardcoded
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

  /* Configure this ALSA session to interrupt whenever PACKET_SIZE or more frames of
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

  // Set available frames minimum (PACKET_SIZE)
  if ((err = snd_pcm_sw_params_set_avail_min(pcm_handle, sw_params, 
                                             PACKET_SIZE / WINDOW_RATIO))
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

  // Start PCM device
  if ((err = snd_pcm_start(pcm_handle)) < 0) {
    fprintf(stderr, "Cannot start stream (%s)\n", snd_strerror(err));
    exit(1);
  }

  /* Set up internal data structures */
  fb_t frame_buffer = fb_create(PACKET_SIZE);

  spectrum_t spec = (spectrum_t)malloc(sizeof(double) * NUM_BANDS);
  int b; for (b = 0; b < NUM_BANDS; b++) spec[b] = 0;

  color_array *c = (color_array *)malloc(sizeof(color_array));
  memset(c, 0, sizeof(c));

  /*STRAND *strand;
  strand = build_strand(NUM_LEDS, "/dev/ttyUSB0", 115200);
  strand_info(strand);
  if (strand == NULL){
     fprintf(stderr, "WHAT THE FUCK?!\n");
     return -1;
  }*/
  
  /* Mainloop */
  while (1) {
    int frames_available;
    int frames_buffered;

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
        //break;
      }
    }
    /*if (frames_available > 0) printf("frames_available = %d\n",
                                     frames_available);*/

    // Capture the available frames
    if ((frames_buffered = capture_callback(pcm_handle, frames_available,
                                            frame_buffer))
        != PACKET_SIZE) {
      //fprintf(stderr, "Capture callback failed\n");
      //break;
    }

    // Calculate spectrum
    if (calculate_spectrum(fb_num_elements(frame_buffer), frame_buffer,
                           spec) !=
        fb_num_elements(frame_buffer)) {
      fprintf(stderr, "Calculate spectrum failed\n");
      break;
    }

    // Calculate color values
    if (calculate_colors(spec, c) != NUM_LEDS) {
      fprintf(stderr, "Update colors failed\n");
      break;
    }

    // Send Color values
    /*int i; for (i = 0; i < NUM_LEDS; i++) {
      strand->colors[(i * 3)] = c->colors[i].r;
      strand->colors[(i * 3) + 1] = c->colors[i].g;
      strand->colors[(i * 3) + 2] = c->colors[i].b;
    }
    update_strand(strand);*/
  }
 
  snd_pcm_close(pcm_handle);
  //free_strand(strand);
  exit(0);
}
