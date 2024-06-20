/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  int diameterOfBinaryTree(TreeNode? root) {
    var answer = cal(root);
    return max(answer[0],answer[1]);
  }
  List<int> cal(TreeNode? root) {
    if (root?.right == null && root?.left == null) {
        return [0, 0];
    } else if (root?.right == null && root?.left != null) {
        var left_list = cal(root?.left);
        return [left_list[0] + 1, max(left_list[0] + 1, left_list[1])];
    } else if (root?.left == null && root?.right != null) {
        var right_list = cal(root?.right);
        return [right_list[0] + 1, max(right_list[0] + 1, right_list[1])];
    } else {
        var left_list = cal(root?.left);
        var right_list = cal(root?.right);

        return [max(left_list[0]+1,right_list[0]+1),
        max(left_list[0]+1+right_list[0]+1, max(right_list[1],left_list[1]))
        ];
    }

  }
}