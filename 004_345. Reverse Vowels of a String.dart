class Solution {
  String reverseVowels(String s) {
    var vowels = ["a", "A", "i", "I", "e", "E", "o", "O", "u", "U"];

    var nonVowelsList = [];
    var vowelsList = [];

    var result = "";

    for (int i = 0; i < s.length; i++) {
      if (vowels.contains(s[i])) {
        nonVowelsList.add("");
        vowelsList.add(s[i]);
      } else {
        nonVowelsList.add(s[i]);
      }
    }
    var reverseVowelsList = vowelsList.reversed.toList();

    var flag = 0;
    for (int i = 0; i < nonVowelsList.length; i++) {
      if (nonVowelsList[i] == "") {
        result += reverseVowelsList[flag];
        flag += 1;
      } else {
        result += nonVowelsList[i];
      }
    }
    return result;
  }
}
