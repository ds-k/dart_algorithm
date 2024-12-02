class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    while (k != 0) {
      for (int i = 0; i < nums.length - k; i++) {
        if (nums[i] == nums[i + k]) {
          return true;
        }
      }
      k -= 1;
    }
    return false;
  }
}
