class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    List<int> output = [];
    for (int i in nums1) {
      if (nums2.contains(i)) {
        output.add(i);
        nums2.remove(i);
      }
    }
    return output;
  }
}

void main() {
  Solution solution = Solution();
  solution.intersect([1,2,2,1], [ 2]);
}
