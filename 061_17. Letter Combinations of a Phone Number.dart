class Solution {
  List<String> letterCombinations(String digits) {
    Map letter = {
      "2": ["a", "b", "c"],
      "3": ["d", "e", "f"],
      "4": ["g", "h", "i"],
      "5": ["j", "k", "l"],
      "6": ["m", "n", "o"],
      "7": ["p", "q", "r", "s"],
      "8": ["t", "u", "v"],
      "9": ["w", "x", "y", "z"]
    };
    if (digits == "") return [];
    if (digits.length == 1) return letter[digits];

    List combi = letter[digits[0]];

    for (int i = 1; i < digits.length; i++) {
      combi = combi.map((combiLetter) {
        List<String> letterList = letter[digits[i]];
        return letterList.map((el) => combiLetter + el).toList();
      }).toList();
      List<String> newCombi = [];
      combi.forEach((x) => x.forEach((y) => newCombi.add(y)));
      combi = newCombi;
    }

    return combi as List<String>;
  }
}
