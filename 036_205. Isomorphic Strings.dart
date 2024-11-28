class Solution {
  bool isIsomorphic(String s, String t) {
    Map match = {};
    for (int i = 0; i < s.length; i++) {
      if (match[s[i]] == null) {
        match[s[i]] = t[i];
      } else if (match[s[i]] != t[i]) {
        return false;
      }
    }
    return match.values.toList().length == match.values.toSet().length;
  }
}
