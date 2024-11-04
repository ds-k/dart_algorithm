class Solution {
  double findMaxAverage(List<int> nums, int k) {
    // (0,3), (1,4), (2,5)
    double result = -10000000000;
    for (int i = 0; i < nums.length - k + 1; i++) {
      int sumSubList = 0;
      for (int j = i; j < i + k; j++) {
        sumSubList += nums[j];
      }

      double avg = sumSubList / k;
      if (avg > result) {
        result = avg;
      }
    }
    return result;
  }
}
