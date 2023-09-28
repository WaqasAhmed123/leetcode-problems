class Solution {
  int strStr(String haystack, String needle) {
    if (haystack.contains(needle)) {
      return haystack.indexOf(needle);
    } else {
      return -1;
    }
  }
}

void main() {
  Solution solution = Solution();
  int result = solution.strStr("leetcode", "leeto");
}
