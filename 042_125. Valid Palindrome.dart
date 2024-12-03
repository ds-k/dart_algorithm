class Solution {
  bool isPalindrome(String s) {
    String trimStr = s.replaceAll(RegExp("[^a-zA-Z0-9]"), "").toLowerCase();

    return trimStr == trimStr.split("").reversed.join();
  }
}
