import 'dart:math';

class Solution {
  int maxArea(List<int> height) {
    int left = 0;
    int right = height.length - 1;

    int maxAmount = 0;

    while (left != right) {
      int w = (left - right).abs();
      int h = min(height[left], height[right]);
      int curAmount = w * h;
      if (curAmount > maxAmount) {
        maxAmount = curAmount;
      }
      if (height[left] <= height[right]) {
        left++;
      } else if (height[left] > height[right]) {
        right--;
      }
    }

    return maxAmount;
  }
}
