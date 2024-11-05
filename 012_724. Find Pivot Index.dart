class Solution {
  int pivotIndex(List<int> nums) {
    int front = 0;
    int pivot = 0;
    int back = 0;
    int sum = nums.reduce((a, b) => a + b);

    for (int i = 0; i < nums.length; i++) {
      front += i == 0 ? 0 : nums[i - 1];
      pivot = nums[i];
      back = sum - (front + pivot);

      print("$front,------ $pivot,------ $back");

      if (front == back) {
        print("!!!!!!!! $front,------ $pivot,------ $back");
        return i;
      }
      // front, nums[i], 총합 - front + pivot
      // nums[i], nums[i+1], 총합 - front + pivot
      // front + nums[i], nums[i+1], 총합 - front + pivot
    }
    return -1;
  }
}
