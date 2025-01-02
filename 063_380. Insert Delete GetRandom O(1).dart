import 'dart:math';

class RandomizedSet {
  late List<int> nums;
  late Map<int, int> map;
  Random rand;

  RandomizedSet() : rand = Random() {
    nums = [];
    map = {};
  }

  bool insert(int val) {
    if (map.containsKey(val)) return false;
    nums.add(val);
    map[val] = nums.length - 1;
    return true;
  }

  bool remove(int val) {
    if (!map.containsKey(val)) return false;
    int index = map[val]!;
    int last = nums.last;
    nums[index] = last;
    map[last] = index;
    nums.removeLast();
    map.remove(val);
    return true;
  }

  int getRandom() {
    int index = rand.nextInt(nums.length);
    return nums[index];
  }
}
