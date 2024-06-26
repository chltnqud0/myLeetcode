/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? middleNode(ListNode? head) {
    int length = 1;
    var pointer = head;
    while (pointer?.next != null) {
        length += 1;
        pointer = pointer?.next;
    }
    int target = length ~/2;
    var answer = head;
    for (int i = 0;i < target;i++) {
        answer = answer?.next;
    }
    return answer;
  }
}