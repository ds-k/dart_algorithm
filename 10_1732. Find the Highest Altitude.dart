class Solution {
  int largestAltitude(List<int> gain) {
    int largest = 0;
    int altitude = 0;

    for (int i = 0; i < gain.length; i++) {
      altitude += gain[i];
      if (largest < altitude) {
        largest = altitude;
      }
    }

    return largest;
  }
}
