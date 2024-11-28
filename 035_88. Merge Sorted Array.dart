class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    nums1.length = m;
    nums1.addAll(nums2);
    nums1.sort();
  }
}
