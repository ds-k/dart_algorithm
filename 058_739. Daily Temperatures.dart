class Solution {
  List<int> dailyTemperatures(List<int> temperatures) {
    List<int> answer = List.filled(temperatures.length, 0);
    List<int> stack = [];
    for (int i = 0; i < temperatures.length; i++) {
      while (stack.isNotEmpty && temperatures[i] > temperatures[stack.last]) {
        int idx = stack.last;
        stack.removeLast();
        answer[idx] = i - idx;
      }
      stack.add(i);
    }
    return answer;
  }
}
