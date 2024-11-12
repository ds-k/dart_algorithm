class Solution {
  int compress(List<String> chars) {
    int index = 0;
    int i = 0;

    while (i < chars.length) {
      String currentChar = chars[i];
      int count = 0;
      print("현재 chars : $chars, currentCahr : $currentChar, index: $index");

      while (i < chars.length && chars[i] == currentChar) {
        i++;
        count++;
      }

      chars[index++] = currentChar;

      if (count > 1) {
        for (var s in count.toString().split("")) {
          chars[index++] = s;
        }
      }
    }
    print("before: $chars");
    chars.length = index;
    print("after : $chars");
    return index;
  }
}
