class Solution {
  bool isSubsequence(String s, String t) {
    String target = s;
    for (int i = 0; i < t.length; i++) {
      if (target == "") return true;
      if (t[i] == target[0]) {
        target = target.substring(1);
      }
    }
    return target == "";
  }
}
