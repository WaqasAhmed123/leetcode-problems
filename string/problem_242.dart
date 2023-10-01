class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }

    Map<String, int> charCount = {};

    for (int i = 0; i < s.length; i++) {
      charCount[s[i]] = (charCount[s[i]] ?? 0) + 1;
    }

    for (int i = 0; i < t.length; i++) {
      if (charCount.containsKey(t[i]) && charCount[t[i]]! > 0) {
        charCount[t[i]] = charCount[t[i]]! - 1;
      } else {
        return false;
      }
    }
    return true;
  }
}

void main() {
  Solution solution = Solution();
  bool result = solution.isAnagram("aacc", "ccac");
  // bool result = solution.isIsomorphic("badc", "baba");
}
