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

#include <stdbool.h>
#include <stdlib.h>
#include <assert.h>

struct caching_queue_data {
  void **elements;
  unsigned int num_elements;
  unsigned int max_num_elements;
  unsigned int head_index;
  unsigned int tail_index;
};

typedef struct caching_queue_data *caching_queue_t;
typedef void* queue_element_t;

/*
 * Creates a new caching queue with the passed maximum size and returns it.
 */
caching_queue_t create(unsigned int max_size);

/*
 * Adds a new element at the tail of the queue.  If the queue is already at its
 * maximum size, one element is dequeued from the head of the queue.  The
 * dequeued element is returned.  If no element was dequeued, NULL is returned.
 */
queue_element_t caching_queue_enqueue(caching_queue_t q, queue_element_t e);

/*
 * Removes an element from the head of the queue and returns it.  If the queue
 * is empty, NULL is returned.
 */
queue_element_t caching_queue_dequeue(caching_queue_t q);

/*
 * Returns whether or not there are any elements in the queue.
 */
bool caching_queue_is_empty(caching_queue_t q);

/*
 * Returns whether or not the queue is at its maximum size.
 */
bool caching_queue_is_full(caching_queue_t q);

/*
 * Returns the number of elements in the queue.
 */
unsigned int caching_queue_num_elements(caching_queue_t q);

/*
 * Returns the maximum size of the queue.
 */
unsigned int caching_queue_size(caching_queue_t);
