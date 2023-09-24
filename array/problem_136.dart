class Solution {
  int singleNumber(List<int> nums) {
    List<int> removeableElements = [];
    for (int i = 0; i < nums.length; i++) {
      for (int j = 0; j < nums.length; j++) {
        if (nums[i] == nums[j] && i != j) {
          removeableElements.add(nums[i]);
        }
      }
    }
    for (int i = 0; i < removeableElements.length; i++) {
      nums.remove(removeableElements[i]);
    }
    return nums[0];
  }
}

void main() {
  Solution solution = Solution();
  solution.singleNumber([4,1,2,1,2]);
}
