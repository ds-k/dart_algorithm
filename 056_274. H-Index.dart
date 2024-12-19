import 'dart:math';

class Solution {
  int hIndex(List<int> citations) {
    int count = 0;
    List<int> countList = [];
    for (int i = 1; i <= citations.length; i++) {
      count = 0;
      for (int j = 0; j < citations.length; j++) {
        if (citations[j] >= i) {
          count++;
        }
      }
      if (count >= i) {
        countList.add(i);
      }
    }

    if (countList.isEmpty) return 0;
    return countList.reduce(max);
  }
}
