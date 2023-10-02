class Solution {
  bool wordPattern(String pattern, String s) {
    List<String> individualWords = s.split(" ");
    Map<String, String> assignValues = {};
    if (pattern.length != individualWords.length) return false;
    for (int i = 0; i < pattern.length; i++) {
      if (!assignValues.containsKey(pattern[i]) &&
          !assignValues.containsValue(individualWords[i])) {
        assignValues[pattern[i]] = individualWords[i];
      }
    }
    for (int i = 0; i < pattern.length; i++) {
      if (!assignValues.containsKey(pattern[i])) {
        print("false at first if");
        return false;
      } else if (assignValues[pattern[i]] != individualWords[i]) {
        print("false at last if");

        return false;
      }
    }

    print(assignValues);
    print(true);
    return true;
  }
}

void main() {
  Solution solution = Solution();
  bool result = solution.wordPattern("abba", "dog dog dog dog");
}
