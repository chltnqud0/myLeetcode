# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def diameterOfBinaryTree(self, root: Optional[TreeNode]) -> int:
        answer = self.cal(root)

        return max(answer)

    def cal(self, root):
        if root.left and root.right:
            l = self.cal(root.left)
            r = self.cal(root.right)
            return [max(l[0], r[0]) + 1, max(l[0] + r[0] + 2, l[1], r[1])]
        if root.left and not root.right:
            l = self.cal(root.left)
            return [l[0] + 1, l[1]]
        if not root.left and root.right:
            r = self.cal(root.right)
            return [r[0] + 1, r[1]]
        if not root.left and not root.right:
            return [0, 0]
