class Solution {
  bool containsDuplicate(List<int> nums) {
    nums.sort();
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1]) {
        return true;
      }
    }
    return false;
  }
}

void main() {
  Solution solution = Solution();
  solution.containsDuplicate([1, 2, 3, 1]);
}
