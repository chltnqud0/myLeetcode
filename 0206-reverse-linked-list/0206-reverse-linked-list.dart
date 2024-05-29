/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
    if (head == null) {
        return head;
    }
    ListNode answer = ListNode(head.val);
    while (head?.next != null) {
        head = head?.next;
        answer = ListNode(head!.val, answer);
    }

    return answer;
  }
}