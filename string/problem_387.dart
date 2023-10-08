class Solution {
  int firstUniqChar(String s) {
    for (int i = 0; i < s.length; i++) {
      String restOfString = s.substring(0, i) + s.substring(i + 1);
      print(restOfString);
      if (!restOfString.contains(s[i])) {
        print(i);
        return i;
      }
    }
    print(-1);
    return -1;
  }
}

void main() {
  Solution solution = Solution();
  int result = solution.firstUniqChar("aab");
}
