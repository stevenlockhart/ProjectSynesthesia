/*
 * Steven Lockhart
 *
 * Frame Buffer
 */

/*typedef struct {
  uint16_t l;
  uint16_t r;
} frame;*/

#include "frame_buffer.h"

fb_t fb_create(unsigned int max_size) {
  fb_t b = (fb_t)malloc(sizeof(struct fb_data));
  if (!b) return NULL;

  b->elements = malloc(sizeof(void*) * max_size);
  if (!b->elements) return NULL;

  b->max_num_elements = max_size;
  b->num_elements = 0;
  b->head = 0;
  b->tail = 0;

  return b;
}

frame fb_enqueue(fb_t b, frame f) {
  assert(b != NULL);

  frame tmp;  tmp.l = 0;  tmp.r = 0;
  tmp.l = 0;
  tmp.r = 0;
  if (fb_is_empty(b)) {
    b->elements[b->tail] = f;
  } else {
    if (fb_is_full(b)) {
      tmp = fb_dequeue(b);
    }
    b->tail++;
    if (b->tail == b->max_num_elements) b->tail = 0;
    b->elements[b->tail] = f;
  }
  b->num_elements++;

  return tmp;
}

frame fb_dequeue(fb_t b) {
  assert(b != NULL);
  
  if (fb_is_empty(b)) {
    frame null;  null.l = 0;  null.r = 0;
    return null;
  } else if (b->head == b->tail) {
    b->num_elements--;

    return b->elements[b->head];
  } else {
    frame tmp = b->elements[b->head];
    b->head++;
    if (b->head == b->max_num_elements) b->head = 0;
    b->num_elements--;
    return tmp;
  }
}

bool fb_is_empty(fb_t b) {
  return b->num_elements == 0;
}

bool fb_is_full(fb_t b) {
  return b->num_elements == b->max_num_elements;
}

unsigned int fb_num_elements(fb_t b) {
  return b->num_elements;
}

unsigned int fb_max_num_elements(fb_t b) {
  return b->max_num_elements;
}
