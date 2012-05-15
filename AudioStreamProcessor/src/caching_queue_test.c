/*
 * Steven Lockhart
 *
 * Caching Queue Test
 */

#include <stdio.h>

#include "caching_queue.h"

void print_test_case(bool exp, char *test) {
  if (!exp) {
    fprintf(stderr, "**TEST FAILED**: %s\n", test);
  } else {
    fprintf(stdout, "TEST PASSED: %s\n", test);
  }
}

int main(int argc, char **argv) {
  /* Test creation */
  printf("\nTesting Creation\n\n");
  printf("Creating caching_queue_t q\n");
  caching_queue_t q = caching_queue_create(10);
  print_test_case(q != NULL, "q !=  NULL");
  print_test_case(caching_queue_num_elements(q) == 0,
                  "caching_queue_elements(q) == 0");
  print_test_case(caching_queue_size(q) == 10,
                  "caching_queue_size(q) == 10");
  print_test_case(caching_queue_is_empty(q),
                  "caching_queue_is_empty(q) == true");
  print_test_case(!caching_queue_is_full(q),
                  "caching_queue_is_full(q) == false");
  print_test_case(q->head_index == 0, "q->head_index == 0");
  print_test_case(q->tail_index == 0, "q->tail_index == 0");

  /* Test enqueing */
  printf("\nTesting Enqueueing\n\n");
  printf("Enqueueing 5\n");
  caching_queue_enqueue(q, (void *)5);
  print_test_case((int)q->elements[q->tail_index] == 5,
                  "q->elements[q->tail_index] == 5");
  print_test_case(q->tail_index == 0, "q->tail_index == 0");
  print_test_case(q->head_index == 0, "q->head_index == 0");
  print_test_case(!caching_queue_is_empty(q),
                  "caching_queue_is_empty(q) == false");
  printf("Enqueueing 8\n");
  caching_queue_enqueue(q, (void *)8);
  print_test_case((int)q->elements[q->tail_index] == 8,
                  "q->elements[q->tail_index] == 8");
  print_test_case((int)q->elements[q->head_index] == 5,
                  "q->elements[q->head_index] == 5"); 
  print_test_case(q->tail_index == 1, "q->tail_index == 1");
  print_test_case(q->head_index == 0, "q->head_index == 0");
  print_test_case(!caching_queue_is_empty(q),
                  "caching_queue_is_empty(q) == false");

  /* Test dequeueing */
  printf("\nTesting Dequeueing\n\n");
  printf("Dequeueing from q\n");
  int e = caching_queue_dequeue(q);
  print_test_case(e == 5, "caching_queue_dequeue(q) == 5)");
  print_test_case(q->tail_index == 1, "q->tail_index == 1");
  print_test_case(q->head_index == 1, "q->head_index == 1");
  print_test_case(!caching_queue_is_empty(q),
                  "caching_queue_is_empty(q) == false");
  printf("Dequeueing from q\n");
  e = caching_queue_dequeue(q);
  print_test_case(e == 8, "caching_queue_dequeue(q) == 8)");
  print_test_case(q->tail_index == 1, "q->tail_index == 1");
  print_test_case(q->head_index == 1, "q->head_index == 1");
  print_test_case(caching_queue_is_empty(q),
                  "caching_queue_is_empty(q) == true");

  /* Test adherence to maximum size and circularity*/
  printf("\nTesting maximum size and circularity\n\n");
  printf("Enqueueing ten times into q\n");
  int i;
  for (i = 0; i < 10; i++) {
    caching_queue_enqueue(q, (void *)i);
  }
  print_test_case(q->tail_index == 0, "q->tail_index == 0");
  print_test_case(q->head_index == 1, "q->head_index == 1");
  print_test_case(!caching_queue_is_empty(q),
                  "caching_queue_is_empty(q) == false");
  print_test_case(caching_queue_is_full(q), 
                  "caching_queue_is_full(q) == true");
  printf("Enqueue once more into q\n");
  caching_queue_enqueue(q, (void *)10);
  print_test_case(q->tail_index == 1, "q->tail_index == 1");
  print_test_case(q->head_index == 2, "q->head_index == 2");
  print_test_case(!caching_queue_is_empty(q),
                  "caching_queue_is_empty(q) == false");
  print_test_case(caching_queue_is_full(q), 
                  "caching_queue_is_full(q) == true");

  return 0;
}
