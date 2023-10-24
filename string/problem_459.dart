class Solution {
  bool repeatedSubstringPattern(String s) {
    for (int i = 0; i <= s.length; i++) {
      if (!s.substring(i).contains(s.substring(0, i))) {
        // print(s.substring(i));
        print(i);
        print(s.substring(i).contains(s.substring(0, i - 1)));
        return (s.substring(i).contains(s.substring(0, i - 1)));
      }
    }
    print(false);
    return false;
  }
}

void main() {
  Solution solution = Solution();
  // int result = solution.countSegments("Hello, my name is John");
  bool result = solution.repeatedSubstringPattern("abab");
}
