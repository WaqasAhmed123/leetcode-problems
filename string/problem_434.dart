class Solution {
  int countSegments(String s) {
    if (s.isEmpty) return 0;
    List<String> sList = s.split(" ");
    sList.removeWhere((element) => element.trim() == "");
    return (sList.length);
  }
}

void main() {
  Solution solution = Solution();
  // int result = solution.countSegments("Hello, my name is John");
  int result = solution.countSegments("                       ");
}
