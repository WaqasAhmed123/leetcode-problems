  class Solution {
    bool repeatedSubstringPattern(String s) {
      int n = s.length;
      for (int i = n ~/ 2; i >= 1; i--) {
        if (n % i == 0 && s.substring(0, i) * (n ~/ i) == s) {
          print(true);
          return true;
        }
      }
      print(false);
      return false;
    }
  }

  void main() {
    Solution solution = Solution();
    bool result = solution.repeatedSubstringPattern("abab");
  }
