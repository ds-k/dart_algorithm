class Solution {
  int singleNumber(List<int> nums) {
    int answer = 0;
    for (int i = 0; i < nums.length; i++) {
      answer = answer ^ nums[i];
      print(answer);
    }
    return answer;
  }
}
