class Solution {
  bool detectCapitalUse(String word) {

    return word == word.toUpperCase() ||
        word == word.toLowerCase() ||
        (word[0] == word[0].toUpperCase() &&
            word.substring(1) == word.substring(1).toLowerCase());
  }
}

void main() {
  Solution solution = Solution();
 bool result = solution.detectCapitalUse("flaG");
}
