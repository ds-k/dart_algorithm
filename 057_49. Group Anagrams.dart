class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    if (strs.length == 1) {
      return [
        [strs[0]]
      ];
    }

    List<String> sortList = strs.map((el) {
      List<String> split = el.split("");
      split.sort();
      return split.join();
    }).toList();

    Map<String, List<String>> map = {};

    for (int i = 0; i < strs.length; i++) {
      if (map.containsKey(sortList[i])) {
        map[sortList[i]]!.add(strs[i]);
      } else {
        map[sortList[i]] = [strs[i]];
      }
    }

    return map.values.toList();
  }
}
