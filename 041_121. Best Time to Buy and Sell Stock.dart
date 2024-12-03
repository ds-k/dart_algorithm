class Solution {
  int maxProfit(List<int> prices) {
    // 시간초과
    //   int profit = 0;
    //     for(int i  = 0; i < prices.length; i++){
    //         for(int j = i + 1; j < prices.length; j++ ){
    //             // print("${prices[i]}, ${prices[j]}");
    //             int gap = prices[i] - prices[j];
    //             if(gap < 0 && gap.abs() > profit) {
    //                 profit = gap.abs();
    //             }
    //         }
    //     }
    //     return profit;
    int minPrice = prices[0];
    int maxProfit = 0;

    for (int i = 1; i < prices.length; i++) {
      maxProfit =
          (prices[i] - minPrice > maxProfit) ? prices[i] - minPrice : maxProfit;

      minPrice = (prices[i] < minPrice) ? prices[i] : minPrice;
    }

    return maxProfit;
  }
}
