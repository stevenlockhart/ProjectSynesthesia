/*
 * Steven Lockhart
 *
 * Frame Buffer
 * 
 */

#include <assert.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

//#include "capture_main.h"

typedef struct {
  int16_t l;
  int16_t r;
} frame;

struct fb_data {
  frame *elements;
  unsigned int num_elements;
  unsigned int max_num_elements;
  unsigned int head;
  unsigned int tail;
};

typedef struct fb_data *fb_t;
//typedef void* q_element_t;

/*
 * Creates a new caching queue with the passed maximum size and returns it.
 */
fb_t fb_create(unsigned int max_size);

/*
 * Adds a new element at the tail of the queue.  If the queue is already at its
 * maximum size, one element is dequeued from the head of the queue.  The
 * dequeued element is returned.  If no element was dequeued, NULL is returned.
 */
frame fb_enqueue(fb_t b, frame f);

/*
 * Removes an element from the head of the queue and returns it.  If the queue
 * is empty, NULL is returned.
 */
frame fb_dequeue(fb_t b);

/*
 * Returns whether or not there are any elements in the queue.
 */
bool fb_is_empty(fb_t b);

/*
 * Returns whether or not the queue is at its maximum size.
 */
bool fb_is_full(fb_t b);

/*
 * Returns the number of elements in the queue.
 */
unsigned int fb_num_elements(fb_t b);

/*
 * Returns the maximum size of the queue.
 */
unsigned int fb_size(fb_t b);
