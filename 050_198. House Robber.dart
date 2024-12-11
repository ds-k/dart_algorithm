import 'dart:math';

class Solution {
  int rob(List<int> nums) {
    if (nums.length == 1) return nums[0];

    List<int> dp = [nums[0], max(nums[0], nums[1])];

    for (int i = 2; i < nums.length; i++) {
      dp.add(max(dp[i - 1], dp[i - 2] + nums[i]));
    }

    return dp[nums.length - 1];
  }
}
