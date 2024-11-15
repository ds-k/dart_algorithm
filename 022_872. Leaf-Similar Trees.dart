class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> getLeafSequence(TreeNode? root) {
    List<int> leaves = [];

    void dfs(TreeNode? node) {
      if (node == null) return;
      if (node.left == null && node.right == null) {
        leaves.add(node.val);
      }
      dfs(node.left);
      dfs(node.right);
    }

    dfs(root);
    return leaves;
  }

  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    List<int> leaves1 = getLeafSequence(root1);
    List<int> leaves2 = getLeafSequence(root2);

    if (leaves1.join(",") == leaves2.join(",")) {
      return true;
    }

    return false;
  }
}
