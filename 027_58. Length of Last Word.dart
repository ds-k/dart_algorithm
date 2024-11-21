class Solution {
  int lengthOfLastWord(String s) {
    List<String> answer = s.trim().split(" ");

    return answer.last.length;
  }
}
