class Solution {
  bool isValid(String s) {
    List<String> parenthesis = [];
    if (s.length.isOdd) {
      return false;
    }
    for (int i = 0; i < s.length; i++) {
      if (s[i] == "(" || s[i] == "{" || s[i] == "[") {
        parenthesis.add(s[i]);
      } else if (s[i] == ")" &&
          (parenthesis.isEmpty || parenthesis.last != "(")) {
        return false;
      } else if (s[i] == "}" &&
          (parenthesis.isEmpty || parenthesis.last != "{")) {
        return false;
      } else if (s[i] == "]" &&
          (parenthesis.isEmpty || parenthesis.last != "[")) {
        return false;
      } else {
        parenthesis.removeLast();
      }
    }
    if (parenthesis.isEmpty) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  Solution solution = Solution();
  bool result = solution.isValid("){");
}
