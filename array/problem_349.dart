class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    List<int> output = [];
    for (int i in nums1) {
      if (nums2.contains(i)) {
        if (!output.contains(i)) {
          output.add(i);
        }
      }
    }
    return output;
  }
}

void main() {
  Solution solution = Solution();
  solution.intersection([4,9,5],[9,4,9,8,4]);
}
