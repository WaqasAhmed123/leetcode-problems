class Solution {
  int findMaxConsecutiveOnes(List<int> nums) {
    int maxCount = 0;
    int count = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == 1) {
        count++;
        if (count > maxCount) maxCount = count;
      } else
        count = 0;
    }
    return maxCount;
  }
}

void main() {
  Solution solution = Solution();
  solution.findMaxConsecutiveOnes([1, 0, 1, 1, 0, 1]);
}
