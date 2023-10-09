
class Solution {
  bool isSubsequence(String s, String t) {
    // List<String> tList = t.split("");
    // List<String> sList = s.split("");
    // if (t.contains(s)) return true;
    int countT = 0;
    int countS = 0;
    for (int i = 0; i < s.length; i++) {
      // if (i < t.length - 1) {
        if (t.codeUnits.contains(s.codeUnitAt(i))){
        countS += s.codeUnitAt(i);

        }
      countT += t.codeUnitAt(i);
      }
    

    // for (int i = 0; i < t.length; i++) {
    //   // if (!s.codeUnits.contains(t.codeUnitAt(i))) {
    //   if (!s.contains(t[i])) {
    //     tList.remove(t[i]);
    //   } else if (s.isNotEmpty && sList.contains(t[i])) {
    //     print("executed");
    //     sList.remove(t[i]);
    //     tList.remove(t[i]);
    //   }-
    // }
    var finalString = String.fromCharCode(t.codeUnits-s.codeUnits);
    
    print(finalString);

    // print(tList);
    // print(sList);
    // print(tList.join() == s);
    return tList.join() == s;
  }
}

void main() {
  Solution solution = Solution();
  bool result = solution.isSubsequence("abc", "ahbgdc");
  // bool result = solution.isSubsequence("ab", "baab");
}
