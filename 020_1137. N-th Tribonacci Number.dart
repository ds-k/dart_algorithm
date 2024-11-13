class Solution {
  int tribonacci(int n) {
    if (n == 0) return 0;
    if (n <= 2) return 1;

    // 0, 1, 2, 3, 4, 5, 6
    // 0, 1, 1, 2, 4, 7, 13
    int answer = 0;
    int a = 0;
    int b = 1;
    int c = 1;

// 4가 들어오면
// 0, 1, 2, 3 까지 더함
//
    for (int i = 3; i <= n; i++) {
      answer = a + b + c;
      a = b;
      b = c;
      c = answer;
    }
    return answer;
  }
}
