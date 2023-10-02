class Solution {
  bool wordPattern(String pattern, String s) {
    List<String> individualWords = s.split(" ");
    Map<String, String> assignValues = {};
    for (int i = 0; i < pattern.length; i++) {
      if (!assignValues.containsKey(pattern[i])) {
        assignValues[pattern[i]] = individualWords[i];
      }
    }

    print(assignValues);
    return true;
  }
}

void main() {
  Solution solution = Solution();
  bool result = solution.wordPattern("abba", "dog cat cat dog");
}
