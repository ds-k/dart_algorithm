import 'dart:math';

class Solution {
  bool canJump(List<int> nums) {
    int distance = 0;

    for (int i = 0; i < nums.length; i++) {
      if (distance > nums.length) {
        return true;
      }

      if (distance < i) {
        return false;
      }
      distance = max(i + nums[i], distance);
    }
    return true;
  }
}
