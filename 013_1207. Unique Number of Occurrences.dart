class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> intMap = {};

    for (int i = 0; i < arr.length; i++) {
      if (intMap.containsKey(arr[i])) {
        intMap[arr[i]] = intMap[arr[i]]! + 1;
      } else {
        intMap[arr[i]] = 1;
      }
    }
    print(intMap.values.toList());

    List<int> intMapValuesList = intMap.values.toList();
    Set<int> intMapValuesSet = intMap.values.toList().toSet();

    return intMapValuesList.length == intMapValuesSet.length;
  }
}
