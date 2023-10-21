class Solution {
  int longestPalindrome(String s) {
    Map<String, int> countValues = {};
    if (s.length == 1) return 1;
    int length = 0;
    bool flag = false;
    for (int i = 0; i < s.length; i++) {
      String element = s[i];
      countValues[element] =
          countValues.containsKey(s[i]) ? countValues[element]! + 1 : 1;
    }

    countValues.values.forEach((occurence) {
      if (occurence.isEven) {
        length += occurence;
      } else {
        length += occurence - 1;
        // length += occurence;
        flag = true;
      }
    });
    if (flag) length += 1;
    return length;
  }
}

void main() {
  Solution solution = Solution();
  int result = solution.longestPalindrome("abccccdd");
  // bool result = solution.isSubsequence("ab", "baab");
}
