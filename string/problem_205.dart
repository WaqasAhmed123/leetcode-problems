class Solution {
  bool isIsomorphic(String s, String t) {
    Map<String, String> replace = {};
    for (int i = 0; i < s.length; i++) {
      String sChar = s[i];
      String tChar = t[i];
      if (!replace.containsKey(sChar)) {
        if (!replace.containsValue(tChar))
          replace[sChar] = tChar;
        else {
          print(false);
          return false;
        }
      }
      if ((replace.containsKey(sChar) && replace[sChar] != tChar)) {
        print(false);
        return false;
      }
    }
    print(replace);
    print(true);
    return true;
  }
}

void main() {
  Solution solution = Solution();
  bool result = solution.isIsomorphic("egg", "add");
  // bool result = solution.isIsomorphic("badc", "baba");
}
