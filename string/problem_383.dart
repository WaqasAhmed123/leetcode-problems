class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    for (int i = 0; i < ransomNote.length; i++) {
      if (magazine.contains(ransomNote[i])) {
        magazine = magazine.replaceFirst(ransomNote[i], '');
      } else {
        return false;
      }
    }

    print(true);
    return true;
  }
}

void main() {
  Solution solution = Solution();
  bool result = solution.canConstruct("aab", "baa");
}
