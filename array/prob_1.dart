//leetcode arrays problem#1
class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          print([i, j]);
          return [i, j];
        }
      }
    }
    return [];
  }
}

void main() {
  Solution solution = Solution();

  List<int> result = solution.twoSum([3, 2, 3], 6);
  print(result);
}
