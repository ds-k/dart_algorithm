class Solution {
  String reverseWords(String s) {
    List<String> result = [];
    String word = "";
    for (int i = 0; i < s.length; i++) {
      print(word);
      if (s[i] != " ") {
        word += s[i];
        if (i == s.length - 1) {
          result.add(word);
        }
      } else {
        if (word != "") {
          result.add(word);
          word = "";
        }
      }
    }
    print(result);

    String resultS = "";

    for (int i = 0; i < result.length; i++) {
      if (i != result.length - 1) {
        resultS += result.reversed.toList()[i] + " ";
      } else {
        resultS += result.reversed.toList()[i];
      }
    }

    return resultS;
  }
}
