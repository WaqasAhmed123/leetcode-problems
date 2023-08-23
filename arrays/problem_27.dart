class Solution {
  int removeElement(List<int> nums, int val) {
    nums.removeWhere((element) => element == val);

    return (nums.length);
  }
}

void main() {
  Solution solution = Solution();
  solution.removeElement([1, 1, 2], 2);
}
