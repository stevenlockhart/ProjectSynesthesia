/*
 * Steven Lockhart
 *
 * Frame Buffer
 */

#include <stdio.h>

#include "frame_buffer.h"

frame_buf_t fb_create(size_t max_size) {
  frame_buf_t buf = (frame_buf_t)malloc(sizeof(struct frame_buf));
  if (!buf) return NULL;

  buf->frames = malloc(sizeof(frame) * max_size);
  if (!buf->frames) return NULL;

  buf->max_size = max_size;
  buf->size = 0;
  buf->head = 0;
  buf->tail = 0;

  return buf;
}

frame fb_enqueue(frame_buf_t buf, frame f) {
  assert(buf != NULL);

  frame ret;  ret.l = 0;  ret.r = 0;
  ret.l = 0;
  ret.r = 0;
  if (buf->size == 0) {
    buf->frames[buf->tail] = f;
  } else {
    if (buf->size == buf->max_size) {
      ret = fb_dequeue(buf);
    }
    buf->tail++;
    if (buf->tail == buf->max_size) buf->tail = 0;
    buf->frames[buf->tail] = f;
  }
  buf->size++;

  return ret;
}

frame fb_dequeue(frame_buf_t buf) {
  assert(buf != NULL);
  
  if (buf->size == 0) {
    frame null_frame;  null_frame.l = 0;  null_frame.r = 0;
    return null_frame;
  } else if (buf->head == buf->tail) {
    buf->size--;

    return buf->frames[buf->head];
  } else {
    frame ret = buf->frames[buf->head];
    buf->head++;
    if (buf->head == buf->max_size) buf->head = 0;
    buf->size--;

    return ret;
  }
}

double *fb_todoubles(frame_buf_t buf) {
  double *ret = (double *)malloc(sizeof(double) * buf->size);
  if (!ret) {
    fprintf(stderr, "Malloc failed in fb_todoubles.\n");
    exit(1);
  }

  int i;
  for (i = 0; i < buf->size; i++) {
    // TEMP: Use only left channel
    ret[i] = (double)buf->frames[i].l;
  }

  return ret;
}
