class Solution {
  List<String> summaryRanges(List<int> nums) {
    List<String> result = [];
    String curRange = "";
    int curNum = 0;
    int startNum = 0;

    for (int i = 0; i < nums.length; i++) {
      if (curRange == "") {
        curNum = nums[i];
        startNum = nums[i];
        curRange += nums[i].toString();
      } else if (curNum + 1 == nums[i]) {
        curNum = nums[i];
        curRange = "$startNum->$curNum";
      } else {
        result.add(curRange);
        curNum = nums[i];
        startNum = nums[i];
        curRange = "$curNum";
      }
      if (i == nums.length - 1) {
        result.add(curRange);
      }
    }
    return result;
  }
}
