import 'dart:math';

class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    print(candies.reduce(max));
    var maxNumber = candies.reduce(max);

    print(candies.map((el) => el + extraCandies >= maxNumber).runtimeType);

    return candies.map((el) => el + extraCandies >= maxNumber).toList();
  }
}
