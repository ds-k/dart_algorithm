class Solution {
  int removeElement(List<int> nums, int val) {
    nums.removeWhere((el) => el == val);
    return nums.length;
  }
}
