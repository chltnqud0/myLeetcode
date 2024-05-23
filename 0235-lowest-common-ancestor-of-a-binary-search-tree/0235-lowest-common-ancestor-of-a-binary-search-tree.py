# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def lowestCommonAncestor(self, root: 'TreeNode', p: 'TreeNode', q: 'TreeNode') -> 'TreeNode':
        while True:
            if root == p:
                return root
            if root == q:
                return root
            if (root.val > p.val) ^ (root.val > q.val):
                return root
            if root.val > p.val:
                root = root.left
            else:
                root = root.right
        