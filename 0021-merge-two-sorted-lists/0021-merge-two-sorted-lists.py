# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeTwoLists(
        self, list1: Optional[ListNode], list2: Optional[ListNode]
    ) -> Optional[ListNode]:
        maintain = ListNode(-1)
        answer = maintain
        if not list1 and not list2:
            return None
        if not list1 and list2:
            return list2
        if list1 and not list2:
            return list1
        if list1 and list2:
            while list1 and list2:
                if list1.val <= list2.val:
                    answer.next = list1
                    list1 = list1.next
                else:
                    answer.next = list2
                    list2 = list2.next
                answer = answer.next
            answer.next = self.mergeTwoLists(list1, list2)
        return maintain.next
