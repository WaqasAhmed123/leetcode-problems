class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    if (nums.length == nums.toSet().length) {
      return false;
    }
    for (int i = 0; i < nums.length; i++) {
      for (int j = 0; j < nums.length; j++) {
        if (nums[i] == nums[j] && i != j && (i - j).abs() <= k) {
          return true;
        }
      }
    }

    return false;
  }
}

void main() {
  Solution solution = Solution();
  solution.containsNearbyDuplicate([1, 0, 1, 1], 1);
}
