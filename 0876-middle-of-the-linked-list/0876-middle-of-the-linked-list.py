# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def middleNode(self, head: Optional[ListNode]) -> Optional[ListNode]:
        target = 1
        temp = head
        while temp.next:
            temp = temp.next
            target += 1
        else:
            target //= 2
        
        temp2= head
        while target:
            temp2 = temp2.next
            target -= 1
        else:
            return temp2