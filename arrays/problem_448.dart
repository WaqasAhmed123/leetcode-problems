class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    nums.sort();
    List<int> output = [];

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != i + 1) {
        if (!nums.contains(i + 1)) output.add(i + 1);
      }
    }

    return output;
  }
}

void main() {
  Solution solution = Solution();
  solution.findDisappearedNumbers([2, 2]);
}
