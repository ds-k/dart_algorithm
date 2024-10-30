class Solution {
  void moveZeroes(List<int> nums) {
    int beforeLength = nums.length;
    nums.removeWhere((num) => num == 0);
    int afterLength = nums.length;

    for (int i = 0; i < beforeLength - afterLength; i++) {
      nums.add(0);
    }
  }
}
