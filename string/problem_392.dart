class Solution {
  String findTheDifference(String s, String t) {
    List<String> tList = t.split("");
    // List<String> sList = s.split("");
    // tList.sort();
    // sList.sort();
    // print(tList);
    // print(sList);
    for (int i = 0; i < s.length; i++) {
      if (t.contains(s[i])) {
        if (sList[i] != tList[i]) {
          print(tList[i]);
          return tList[i];
        }
      } else {
        print(tList[tList.length - 1]);
        return tList[tList.length - 1];
      }
    }
    print("0");
    return "0";
  }
}

void main() {
  Solution solution = Solution();
  String result = solution.findTheDifference("abcd", "abcde");
}
