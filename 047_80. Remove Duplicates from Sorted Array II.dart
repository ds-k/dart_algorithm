class Solution {
  int removeDuplicates(List<int> nums) {
    int count = 1;
    int prev = nums[0];
    int deleteCount = 0;

    for (int i = 1; i < nums.length; i++) {
      // 이전 숫자랑 같은데 카운트가 2 이하면, 카운트++
      if (prev == nums[i] && count < 2) {
        count++;
        continue;
      }
      // 이전 숫자랑 같은데 카운트가 2 이상이면, 해당 숫자 삭제
      else if (prev == nums[i] && count >= 2) {
        count++;
        nums[i] = double.maxFinite.toInt();
        deleteCount++;
        continue;
      }
      // 이전 숫자와 다르면, prev 초기화, 카운트 초기화
      else if (prev != nums[i]) {
        prev = nums[i];
        count = 1;
        continue;
      }
    }

    nums.sort();

    return nums.length - deleteCount;
  }
}
