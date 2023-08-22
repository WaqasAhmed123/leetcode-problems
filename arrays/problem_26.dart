class Solution {
  removeDuplicates(List<int> nums) {
    Set<int> uniqueElements = {};
    for (int i in nums) {
      if (!uniqueElements.contains(i)) {
        uniqueElements.add(i);
      }
    }
    nums.clear();
    nums.addAll(uniqueElements);
    uniqueElements.clear();

    return (nums.length);
  }
}

void main() {
  Solution solution = Solution();
  solution.removeDuplicates([1, 1, 2]);
}
