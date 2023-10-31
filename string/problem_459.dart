class Solution {
  bool repeatedSubstringPattern(String s) {
    for (int i = 0; i <= s.length; i++) {
      // print(s.substring(0, i + 1));
      if (!s.substring(i).contains(s.substring(0, i))) {
        print(s.substring(0, i - 1));
        print(s.substring(i - 1));
        // print(i);
        print("-----");
        print(s.substring(i - 1).contains(s.substring(0, i - 1)));
        return (s.substring(i - 1).contains(s.substring(0, i - 1)));
      }
    }
    // print(false);
    return false;
  }
}

void main() {
  Solution solution = Solution();
  // int result = solution.countSegments("Hello, my name is John");
  bool result = solution.repeatedSubstringPattern("aba");
}
