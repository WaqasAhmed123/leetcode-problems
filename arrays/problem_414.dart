class Solution {
  int thirdMax(List<int> nums) {
    nums.sort();
    Set<int> numsSet = nums.toSet();
    if (numsSet.length >= 3) {
      return (numsSet.elementAt(numsSet.length - 3));
    }
    return (numsSet.elementAt(numsSet.length - 1));
  }
}

void main() {
  Solution solution = Solution();
  solution.thirdMax([2, 2, 3, 1]);
}
