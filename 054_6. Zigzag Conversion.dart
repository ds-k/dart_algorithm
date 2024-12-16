class Solution {
  String convert(String s, int numRows) {
    Map map = {};
    int curRow = 0;
    bool isGoingDown = true;
    if (s.length == 1 || numRows == 1) return s;

    for (int i = 0; i < numRows; i++) {
      map[i] = [];
    }

    for (int i = 0; i < s.length; i++) {
      map[curRow].add(s[i]);
      if (curRow == numRows - 1) {
        isGoingDown = false;
      } else if (curRow == 0) {
        isGoingDown = true;
      }
      if (isGoingDown) {
        curRow++;
      } else {
        curRow--;
      }
    }
    String answer = "";
    map.forEach((k, v) {
      answer += v.join();
    });
    return answer;
  }
}
