class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0; // 배열이 비어있으면 0 반환

    int k = 1; // 유효한 요소의 개수를 셀 포인터 (첫 번째 요소는 항상 유효하므로 1로 시작)

    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != nums[k - 1]) {
        // 현재 요소가 마지막 유효 요소와 다르면
        nums[k] = nums[i]; // 유효 위치에 현재 요소를 배치
        k++; // 유효 요소 개수 증가
      }
    }
    return k; // 유효한 길이를 반환
  }
}
