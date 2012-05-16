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
  printf("Creating cq_t q\n");
  cq_t q = cq_create(10);
  print_test_case(q != NULL, "q !=  NULL");
  print_test_case(cq_num_elements(q) == 0, "cq_elements(q) == 0");
  print_test_case(cq_max_num_elements(q) == 10, "cq_size(q) == 10");
  print_test_case(cq_is_empty(q), "cq_is_empty(q) == true");
  print_test_case(!cq_is_full(q), "cq_is_full(q) == false");
  print_test_case(q->head == 0, "q->head == 0");
  print_test_case(q->tail == 0, "q->tail == 0");

  /* Test enqueing */
  printf("\nTesting Enqueueing\n\n");
  printf("Enqueueing 5\n");
  cq_enqueue(q, (void *)5);
  print_test_case((int)q->elements[q->tail] == 5, "q->elements[q->tail] == 5");
  print_test_case(q->tail == 0, "q->tail == 0");
  print_test_case(q->head == 0, "q->head == 0");
  print_test_case(!cq_is_empty(q), "cq_is_empty(q) == false");
  printf("Enqueueing 8\n");
  cq_enqueue(q, (void *)8);
  print_test_case((int)q->elements[q->tail] == 8, "q->elements[q->tail] == 8");
  print_test_case((int)q->elements[q->head] == 5, "q->elements[q->head] == 5"); 
  print_test_case(q->tail == 1, "q->tail == 1");
  print_test_case(q->head == 0, "q->head == 0");
  print_test_case(!cq_is_empty(q), "cq_is_empty(q) == false");

  /* Test dequeueing */
  printf("\nTesting Dequeueing\n\n");
  printf("Dequeueing from q\n");
  int e = cq_dequeue(q);
  print_test_case(e == 5, "cq_dequeue(q) == 5)");
  print_test_case(q->tail == 1, "q->tail == 1");
  print_test_case(q->head == 1, "q->head == 1");
  print_test_case(!cq_is_empty(q), "cq_is_empty(q) == false");
  printf("Dequeueing from q\n");
  e = cq_dequeue(q);
  print_test_case(e == 8, "cq_dequeue(q) == 8)");
  print_test_case(q->tail == 1, "q->tail == 1");
  print_test_case(q->head == 1, "q->head == 1");
  print_test_case(cq_is_empty(q), "cq_is_empty(q) == true");

  /* Test adherence to maximum size and circularity*/
  printf("\nTesting maximum size and circularity\n\n");
  printf("Enqueueing ten times into q\n");
  int i;
  for (i = 0; i < 10; i++) {
    cq_enqueue(q, (void *)i);
  }
  print_test_case(q->tail == 0, "q->tail == 0");
  print_test_case(q->head == 1, "q->head == 1");
  print_test_case(!cq_is_empty(q), "cq_is_empty(q) == false");
  print_test_case(cq_is_full(q), "cq_is_full(q) == true");
  printf("Enqueue once more into q\n");
  cq_enqueue(q, (void *)10);
  print_test_case(q->tail == 1, "q->tail == 1");
  print_test_case(q->head == 2, "q->head == 2");
  print_test_case(!cq_is_empty(q), "cq_is_empty(q) == false");
  print_test_case(cq_is_full(q), "cq_is_full(q) == true");

  return 0;
}
