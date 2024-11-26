class Solution {
  bool wordPattern(String pattern, String s) {
    List sList = s.split(" ");
    List pList = pattern.split("");

    print("$sList, $pList");
    Map match = {};

    if (sList.length != pList.length) return false;

    for (int i = 0; i < sList.length; i++) {
      if (match[pList[i]] == null) {
        match[pList[i]] = sList[i];
      } else if (match[pList[i]] != sList[i]) return false;
    }

    String target = "";

    bool answer = true;

    match.forEach((k, v) {
      if (target == "") {
        target = v;
      } else if (target == v) {
        answer = false;
      }
    });

    return answer;
  }
}
