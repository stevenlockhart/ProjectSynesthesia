/*
 * Steven Lockhart
 *
 * Caching Queue
 */

#include "caching_queue.h"

cq_t cq_create(unsigned int max_size) {
  cq_t q = (cq_t)malloc(sizeof(struct cq_data));
  if (!q) return NULL;

  q->elements = malloc(sizeof(void*) * max_size);
  if (!q->elements) return NULL;

  q->max_num_elements = max_size;
  q->num_elements = 0;
  q->head = 0;
  q->tail = 0;

  return q;
}

q_element_t cq_enqueue(cq_t q, q_element_t e) {
  assert(q != NULL);

  q_element_t tmp = NULL;
  if (cq_is_empty(q)) {
    q->elements[q->tail] = e;
  } else {
    if (cq_is_full(q)) {
      tmp = cq_dequeue(q);
    }
    q->tail++;
    if (q->tail == q->max_num_elements) q->tail = 0;
    q->elements[q->tail] = e;
  }
  q->num_elements++;

  return tmp;
}

q_element_t cq_dequeue(cq_t q) {
  assert(q != NULL);
  
  if (cq_is_empty(q)) {
    return NULL;
  } else if (q->head == q->tail) {
    q->num_elements--;

    return q->elements[q->head];
  } else {
    q_element_t tmp = q->elements[q->head];
    q->head++;
    if (q->head == q->max_num_elements) q->head = 0;
    q->num_elements--;
    return tmp;
  }
}

bool cq_is_empty(cq_t q) {
  return q->num_elements == 0;
}

bool cq_is_full(cq_t q) {
  return q->num_elements == q->max_num_elements;
}

unsigned int cq_num_elements(cq_t q) {
  return q->num_elements;
}

unsigned int cq_max_num_elements(cq_t q) {
  return q->max_num_elements;
}
