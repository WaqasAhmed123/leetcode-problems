class Solution {
  int lengthOfLastWord(String s) {
    List<String> words = s.trim().split(" ");
    return words.elementAt(words.length-1).length;
  }
}

void main() {
  Solution solution = Solution();
  int result = solution.lengthOfLastWord("luffy is still joyboy");
}
