/*
 * Steven Lockhart
 *
 * Frame Buffer
 * 
 * Frame Buffer implemented as fixed size queue implemented as a circular buffer
 */

#ifndef FRAME_BUFFER_H
#define FRAME_BUFFER_H 

#include <assert.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

typedef struct {
  int16_t l;
  int16_t r;
} frame;

struct frame_buf {
  frame *frames;
  size_t size;
  size_t max_size;
  unsigned int head;
  unsigned int tail;
};
typedef struct frame_buf *frame_buf_t;

/*
 * Creates a new caching queue with the passed maximum size and returns it.
 */
frame_buf_t fb_create(size_t max_size);

/*
 * Adds a new element at the tail of the queue.  If the queue is already at its
 * maximum size, one element is dequeued from the head of the queue.  The
 * dequeued element is returned.  If no element was dequeued, NULL is returned.
 */
frame fb_enqueue(frame_buf_t b, frame f);

/*
 * Removes an element from the head of the queue and returns it.  If the queue
 * is empty, NULL is returned.
 */
frame fb_dequeue(frame_buf_t b);

/*
 * Returns the contents of the frame buffer as an array of doubles
 */
double *fb_todoubles(frame_buf_t b);

#endif
