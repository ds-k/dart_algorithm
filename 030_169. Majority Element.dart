class Solution {
  int majorityElement(List<int> nums) {
    int count = 0;
    int major = 0;

    for (int num in nums) {
      if (count == 0) major = num;
      if (num == major)
        count++;
      else
        count--;
    }

    return major;
  }
}
