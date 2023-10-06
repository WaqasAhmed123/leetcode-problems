class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    if (magazine.contains(ransomNote)) {
      print(true);
      return true;
    }

    print(false);
    return false;
  }
}

void main() {
  Solution solution = Solution();
  bool result = solution.canConstruct("aab", "baa");
}
