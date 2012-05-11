/*
 * Steven Lockhart
 *
 * Caching Queue
 */

#include <stdlib.h>

#include "caching_queue.h"

caching_queue_t create(unsigned int max_size) {
  // TODO
  return NULL;
}

queue_element_t caching_queue_enqueue(caching_queue_t q, queue_element_t e) {
  // TODO
  return NULL;
}

queue_element_t caching_queue_dequeue(caching_queue_t q) {
  // TODO
  return NULL;
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
