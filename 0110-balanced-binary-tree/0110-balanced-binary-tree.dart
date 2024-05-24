/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
import 'dart:math';
class Solution {
  bool isBalanced(TreeNode? root) {
    if (root == null) {
        return true;
    }
    if (cal(root).runtimeType == bool) {
        return false;
    } else {
        return true;
    }
  }
    dynamic cal(TreeNode? root) {
        if (root == null) {
            return 0;
        }
        var temp_left = cal(root.left);
        if (temp_left.runtimeType == bool) {
            return false;
        }
        var temp_right = cal(root.right);
        if (temp_right.runtimeType == bool) {
            return false;
        }
        print((temp_left - temp_right).abs());
        if ((temp_left - temp_right).abs() > 1) {
            return false;
        }
        if (temp_right > temp_left) {
            return temp_right + 1;
        } else {
            return temp_left + 1;
        }
    }
}