class Solution {
  void rotate(List<int> nums, int k) {
    int length = nums.length;
    int rotate = k % length;
    List back = nums.sublist(length - rotate);
    List<int> result = [];
    result = [...back, ...nums];
    result.length = length;

    nums.removeRange(0, length);
    nums.addAll(result);
  }
}
