class Solution {
  int majorityElement(List<int> nums) {
    int count = 1;
    for (int i = 0; i < nums.length; i++) {
      for (int j = 0; j < nums.length; j++) {
        if (nums[i] == nums[j] && i != j) {
          count++;
        }
      }
      if (count > (nums.length ~/ 2)) {
        return nums[i];
      }
      count = 1;
    }
    return 0;
  }
}

void main() {
  Solution solution = Solution();
  solution.majorityElement([6, 5, 5]);
}
