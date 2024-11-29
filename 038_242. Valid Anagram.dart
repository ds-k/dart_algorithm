class Solution {
  bool isAnagram(String s, String t) {
    List sList = s.split("");
    List tList = t.split("");

    sList.sort();
    tList.sort();

    return sList.join() == tList.join();
  }
}
