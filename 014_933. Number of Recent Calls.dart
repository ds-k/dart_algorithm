class RecentCounter {
  List<int> queue = [];

  RecentCounter() {}

  int ping(int t) {
    queue.add(t);
    while (queue[0] < t - 3000) {
      queue.removeAt(0);
    }
    return queue.length;
  }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = RecentCounter();
 * int param1 = obj.ping(t);
 */