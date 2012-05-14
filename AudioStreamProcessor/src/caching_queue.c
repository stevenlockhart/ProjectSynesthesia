/*
 * Steven Lockhart
 *
 * Caching Queue
 */

#include "caching_queue.h"

caching_queue_t caching_queue_create(unsigned int max_size) {
  caching_queue_t q =
    (caching_queue_t)malloc(sizeof(struct caching_queue_data));
  if (!q) return NULL;

  q->elements = malloc(sizeof(void*) * max_size);
  if (!q->elements) return NULL;

  q->max_num_elements = max_size;
  q->num_elements = 0;
  q->head_index = 0;
  q->tail_index = 0;

  return q;
}

queue_element_t caching_queue_enqueue(caching_queue_t q, queue_element_t e) {
  assert(q != NULL);

  queue_element_t t = NULL;
  if (caching_queue_is_full(q)) {
    t = caching_queue_dequeue(q);
  }

  q->elements[q->head_index] = e;
  q->head_index++;
  if (q->head_index > q->max_num_elements) {
    q->head_index = 0;
  }
 
  return t;
}

queue_element_t caching_queue_dequeue(caching_queue_t q) {
  queue_element_t t = q->elements[q->tail_index];
  
  q->tail_index++;
  if (q->tail_index > q->max_num_elements) {
    q->head_index = 0;
  }

  return t;
}

bool caching_queue_is_empty(caching_queue_t q) {
  return q->num_elements == 0;
}

bool caching_queue_is_full(caching_queue_t q) {
  return q->num_elements == q->max_num_elements;
}

unsigned int caching_queue_num_elements(caching_queue_t q) {
  return q->num_elements;
}

unsigned int caching_queue_size(caching_queue_t q) {
  return q->max_num_elements;
}
