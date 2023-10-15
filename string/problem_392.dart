class Solution {
  bool isSubsequence(String s, String t) {
    if (s.isEmpty) return true;
    int matchedChar = 0;
    for (int i = 0; i < t.length; i++) {
      if (t[i] == s[matchedChar]) {
        matchedChar++;
        if (matchedChar == s.length) {
          return true;
        }
      }
    }

    return false;
  }
}

void main() {
  Solution solution = Solution();
  bool result = solution.isSubsequence("abc", "ahbgdc");
  // bool result = solution.isSubsequence("ab", "baab");
}
