class Solution {
  int findPoisonedDuration(List<int> timeSeries, int duration) {
    int totalSeconds = 0;
    for (int i = 0; i < timeSeries.length; i++) {
      if (i < timeSeries.length - 1) {
        if ((timeSeries[i] + duration - 1) < timeSeries[i + 1]) {
          totalSeconds += duration;
        } else {
          totalSeconds += timeSeries[i + 1] - timeSeries[i];
        }
      } else {
        totalSeconds += duration;
      }
    }

    print(totalSeconds);
    return totalSeconds;
  }
}

void main() {
  Solution solution = Solution();
  // solution.findPoisonedDuration([1, 3], 2);
  solution.findPoisonedDuration([1, 2, 3, 4, 5], 5);
}
// [1,2,3,4,5]