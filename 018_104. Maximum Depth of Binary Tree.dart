class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int maxDepth(TreeNode? root) {
    print("currentNode: ${root?.val} ");

    if (root == null) {
      return 0;
    }

    int leftDepth = maxDepth(root.left);
    int rightDepth = maxDepth(root.right);

    int depth = leftDepth > rightDepth ? leftDepth : rightDepth;

    return depth + 1;
  }
}
