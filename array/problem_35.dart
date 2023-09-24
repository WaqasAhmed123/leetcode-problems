class Solution {
  int searchInsert(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == target) {
        return (i);
      } else if (nums[i] > target) {
        return (i);
      }
    }
    return (nums.length);
  }
}

void main() {
  Solution solution = Solution();
  solution.searchInsert([1, 1, 2, 4], 3);
}
