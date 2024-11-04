class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    List<int> answer1 =
        nums1.toSet().where((el) => !nums2.contains(el)).toList();
    List<int> answer2 =
        nums2.toSet().where((el) => !nums1.contains(el)).toList();
    return [answer1, answer2];
  }
}
