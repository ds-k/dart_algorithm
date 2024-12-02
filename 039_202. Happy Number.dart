class Solution {
  bool isHappy(int n) {
    int curNum = n;
    Set numList = {};
    while (curNum != 1) {
      if (numList.contains(curNum)) {
        return false;
      }
      numList.add(curNum);
      curNum = sumSquare(curNum);
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
