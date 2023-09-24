class Solution {
  int missingNumber(List<int> nums) {
    nums.sort();
    if (nums.length == 1 && nums.first == 1) return 0;

    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i + 1] != nums[i] + 1) {
        return nums[i] + 1;
      }
    }
    if (nums.last != nums.length)
      return nums.length;
    else
      return 0;
  }
}

void main() {
  Solution solution = Solution();
  // List<String> result = solution.summaryRanges([0, 1, 2, 4, 5, 7]);
  int result = solution.missingNumber([1, 2]);
  print(result); // Output: ["0->2", "4->5", "7"]
}
