class Solution {
  bool isHappy(int n) {
    int curNum = n;
    List numList = [];
    while (curNum != 1) {
      if (numList.contains(sumSquare(curNum))) {
        return false;
      }
      curNum = sumSquare(curNum);
      numList.add(curNum);
    }
    return true;
  }
}

int sumSquare(int n) {
  List numList = n.toString().split("");
  int result = 0;
  for (int i = 0; i < numList.length; i++) {
    int number = int.parse(numList[i]);
    result += number * number;
  }
  return result;
}
