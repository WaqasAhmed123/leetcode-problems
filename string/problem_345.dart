class Solution {
  String reverseVowels(String s) {
    List<String> sList = s.split("");
    // int i = 0;
    // int i = sList.length - 1;
    int i = 0;
    while (i < sList.length - 1) {
      if (sList[i] == "a" ||
          sList[i] == "e" ||
          sList[i] == "i" ||
          sList[i] == "o" ||
          sList[i] == "u") {
        String temp = sList[i];
        sList[i] = sList[i];
        sList[i] = temp;
        // i++;
        // i--;
        i++;
      } else {
        // i++;
        // i--;
        i++;
      }
    }
    print(sList);
    return sList.toString();
  }
}

void main() {
  Solution solution = Solution();
  var result = solution.reverseVowels("hello");
}
