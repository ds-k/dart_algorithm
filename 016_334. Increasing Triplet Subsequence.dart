class Solution {
  bool increasingTriplet(List<int> nums) {
    Set<int> idxSet = {};
    for (int i = 0; i < nums.length; i++) {
      for (int j = nums.length - 1; j >= i + 1; j--) {
        if (nums[j] > nums[i]) {
          idxSet.add(j);
        }
      }
    }

    List<int> idxSetList = idxSet.toList();
    for (int k = 0; k < idxSetList.length; k++) {
      for (int l = nums.length - 1; l >= idxSetList[k]; l--) {
        if (nums[idxSetList[k]] < nums[l]) return true;
      }
    }

    return false;
  }
}

// 기존 풀이는 반복문이 많아서 걸렸다..

class Solution2 {
  bool increasingTriplet(List<int> nums) {
    int first = nums[0];
    int second = double.maxFinite.toInt();

    for (int num in nums) {
      if (num <= first) {
        first = num; // 가장 작은 수 갱신
      } else if (num <= second) {
        second = num; // 두 번째로 작은 수 갱신
      } else {
        // 세 번째로 큰 수가 발견된 경우, 증가하는 세 개의 수열이 존재
        return true;
      }
    }
    return false;
  }
}
