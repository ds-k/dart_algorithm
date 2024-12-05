import 'dart:math';

class Solution {
  int romanToInt(String s) {
    Map<String, int> map = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000
    };
    int result = 0;
    int prev = map[s[0]]!;

    for (int i = 1; i < s.length; i++) {
      if (prev < map[s[i]]!) {
        result -= prev;
      } else {
        result += prev;
      }
      prev = map[s[i]]!;
    }

    return result + prev;

    // MCMXCIV
    // +1000, -100, +1000, -10, +100, -1, +5

    // LVIII
    // +50, +5, +1, +1, +1

    // CM
    // -100, +1000
  }
}
