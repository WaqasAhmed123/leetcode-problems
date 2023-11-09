class Solution {
  bool checkRecord(String s) {
    if (s.length < 2) return true;
    int absents = 0;
    int lates = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] == "A") {
        absents++;
        lates = 0;
      } else if (s[i] == "L") {
        lates++;
        if (lates > 2) {
          print(false);
          return false;
        } 
      }
        else if (s[i] == "P") lates = 0;
    }
    return absents < 2 && lates <= 2;
  }
}

void main() {
  Solution solution = Solution();
  // bool result = solution.checkRecord("PPALLL");
  bool result = solution.checkRecord("LPLPLPLPLPL");
  // bool result = solution.checkRecord("AA");
  // bool result = solution.checkRecord("LALL");
}
