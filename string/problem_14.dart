class Solution {
  String longestCommonPrefix(List<String> strs) {
    String prefix = "";
    bool flag = true;
    if (strs.length == 1) {
      return strs[0];
    }
    String shortestString = strs.reduce(
        (value, element) => value.length < element.length ? value : element);
    strs.remove(shortestString);
    print(strs);
    for (int i = 0; i < shortestString.length; i++) {
      for (int j = 0; j < strs.length; j++) {
        if (strs[j][i] != shortestString[i]) {
          flag = false;
          break;
        } else if (strs[j][i] == shortestString[i] && flag != false) {
          if (j == strs.length - 1) {
            prefix += shortestString[i];
          }
        }
      }
    }
    return prefix;
  }
}

void main() {
  Solution solution = Solution();

  // String result = solution.longestCommonPrefix(["cir", "car"]);
  String result = solution.longestCommonPrefix([
    "a",
  ]);
  // String result = solution.longestCommonPrefix(["dog", "racecar", "car"]);
}
