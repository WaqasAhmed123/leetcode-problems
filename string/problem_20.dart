
class Solution {
  bool isValid(String s) {
    bool validParenthesis = false;
    if (s.length.isOdd) {
      print(false);
      return false;
    }
    // Queue<String> parenthesis = new Queue<String>();
    List<String> parenthesis = [];
    for (int i = 0; i < s.length; i++) {
      if (s[i] == "(" || s[i] == "{" || s[i] == "[")
        parenthesis.add(s[i]);
      else if (s[i] == ")") {
        parenthesis.remove("(");
      } else if (s[i] == "}") {
        parenthesis.remove("{");
      } else if (s[i] == "]") {
        parenthesis.remove("[");
      }
    }
    if (parenthesis.isEmpty) {
      print(true);
      return true;
    } else {
      print(false);
      return false;
    }
  }
}

void main() {
  Solution solution = Solution();

  // String result = solution.longestCommonPrefix(["cir", "car"]);
  bool result = solution.isValid("(]");
  // String result = solution.longestCommonPrefix(["dog", "racecar", "car"]);
}
