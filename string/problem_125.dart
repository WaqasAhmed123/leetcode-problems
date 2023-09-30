class Solution {
  bool isPalindrome(String s) {
    String palidrome = "";
    String sTruncated = s.replaceAll(RegExp(r'[^\w]|[_]'), '').toLowerCase();
    for (int i = sTruncated.length - 1; i >= 0; i--) {
      palidrome += sTruncated[i];
    }

    print(sTruncated);
    return sTruncated == palidrome;
  }
}

void main() {
  Solution solution = Solution();
  bool result = solution.isPalindrome("ab_a");
  print(result); // Output: "100"
}
