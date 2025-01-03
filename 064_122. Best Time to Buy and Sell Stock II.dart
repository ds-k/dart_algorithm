class Solution {
  int maxProfit(List<int> prices) {
    // 모든 상승 구간을 더하면 된다
    // 전날보다 오늘이 높으면 다 더함
    int sum = 0;
    for (int i = 1; i < prices.length; i++) {
      if (prices[i - 1] < prices[i]) {
        sum += prices[i] - prices[i - 1];
      }
    }
    return sum;
  }
}
