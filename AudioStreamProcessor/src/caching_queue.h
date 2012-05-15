/*
 * Steven Lockhart
 *
 * Caching Queue
 * 
 * A data structure that combines elements of queues and least-recently-used
 * caches.  The queue has a maximum size analagous to the cache-size.  If the
 * queue is full, an enqueue also results in a dequeue.  This way, when the
 * buffer is at its maximum size, the oldest elements in the queue are removed
 * from the queue to make room for new elements, like in a least-recently-used
 * cache.  
 */

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>

struct cq_data {
  void **elements;
  unsigned int num_elements;
  unsigned int max_num_elements;
  unsigned int head;
  unsigned int tail;
};

typedef struct cq_data *cq_t;
typedef void* q_element_t;

/*
 * Creates a new caching queue with the passed maximum size and returns it.
 */
cq_t cq_create(unsigned int max_size);

/*
 * Adds a new element at the tail of the queue.  If the queue is already at its
 * maximum size, one element is dequeued from the head of the queue.  The
 * dequeued element is returned.  If no element was dequeued, NULL is returned.
 */
q_element_t cq_enqueue(cq_t q, q_element_t e);

/*
 * Removes an element from the head of the queue and returns it.  If the queue
 * is empty, NULL is returned.
 */
q_element_t cq_dequeue(cq_t q);

/*
 * Returns whether or not there are any elements in the queue.
 */
bool cq_is_empty(cq_t q);

/*
 * Returns whether or not the queue is at its maximum size.
 */
bool cq_is_full(cq_t q);

/*
 * Returns the number of elements in the queue.
 */
unsigned int cq_num_elements(cq_t q);

/*
 * Returns the maximum size of the queue.
 */
unsigned int cq_size(cq_t);
