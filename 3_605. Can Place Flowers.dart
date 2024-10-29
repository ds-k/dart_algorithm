class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    var beforeNum = 0;

    for (int i = 0; i < flowerbed.length; i++) {
      // beforeNum이 0이고, 현재 num이 0이면 n에서 -1
      // beforeNum이 1이고, 현재 num이 1이면 n에 + 1
      if (beforeNum == 0 && flowerbed[i] == 0) {
        n -= 1;
        // 이때 이전 숫자는 1이 된다.
        beforeNum = 1;
      } else if (beforeNum == 1 && flowerbed[i] == 1) {
        n += 1;
      } else {
        beforeNum = flowerbed[i];
      }
      print('beforeNum : $beforeNum currentNum: ${flowerbed[i]} n: $n ');
    }

    return n <= 0;
  }
}
