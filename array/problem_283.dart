class Solution {
  void moveZeroes(List<int> nums) {
    if (nums.length == 1) print(nums[0]);
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == 0) {
        nums.add(0);
        nums.remove(nums[i]);
      }
    }
    print(nums);
  }
}

void main() {
  Solution solution = Solution();
  solution.moveZeroes([0]);
}
