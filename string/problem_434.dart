class Solution {
  int countSegments(String s) {
    if (s.isEmpty) return 0;
    List<String> sList = [];
    sList.removeWhere(
      (element) => element == " ",
    );
    print(sList);
    print(sList.length);
    return (s.split(" ").length);
  }
}

void main() {
  Solution solution = Solution();
  int result = solution.countSegments("Hello, my name is John");
  // int result = solution.countSegments("");
}
