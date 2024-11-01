class Solution {
  List<int> productExceptSelf(List<int> nums) {
    // List<int> result = [];
    // List<int> iList = List.generate(nums.length, (idx) => idx);

    // for(int i = 0; i < nums.length; i++) {
    //     result.add(iList.where((x) => x != i).toList().fold(1, (value,element) => value * nums[element]));
    // }

    // 기존 풀이는 where문이랑 fold문 등이 계속 반복문이라 시간복잡도가 올라가서 통과 못했다.

    int left = 1;
    int right = 1;
    List<int> result = [];

    for (int i = 0; i < nums.length; i++) {
      if (i == 0) {
        result.add(1);
        continue;
      }
      left *= nums[i - 1];
      result.add(left);
    }

    for (int i = nums.length - 2; i >= 0; i--) {
      right *= nums[i + 1];
      result[i] *= right;
    }
    return result;
  }
}
