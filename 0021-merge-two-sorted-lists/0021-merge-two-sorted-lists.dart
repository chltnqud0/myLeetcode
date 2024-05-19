/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list1 == null && list2 == null) {
        return null;
    } else if (list1 == null && list2 != null) {
        return list2;
    } else if (list1 != null && list2 == null) {
        return list1;
    }
    var maintain = ListNode(-1);
    dynamic answer = maintain;
    while (list1 != null && list2 != null) {
        if (list1.val >= list2.val) {
            answer.next = list2;
            list2 = list2.next;
        } else {
            answer.next = list1;
            list1 = list1.next;
        }
        answer = answer.next;
    }
    if (list1 == null && list2 != null) {
        answer.next = list2;
    } else if (list1 != null && list2 == null) {
        answer.next = list1;
    }

    return maintain.next;
  }
}