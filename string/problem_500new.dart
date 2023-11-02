class Solution {
  List<String> findWords(List<String> words) {
    List<String> rowWiseAlphabets = ["qwertyuiop", "asdfghjkl", "zxcvbnm"];
    int? selectedRow;
    List<int> removableWords = [];
    // String firstRow = ;
    // String secondRow = ;
    // String thirdRow = ;
    for (int i = 0; i < words.length; i++) {
      print(i);
      if (rowWiseAlphabets[0].contains(words[i][0].toLowerCase())) {
        selectedRow = 0;
      } else if (rowWiseAlphabets[1].contains(words[i][0].toLowerCase())) {
        selectedRow = 1;
      } else if (rowWiseAlphabets[2].contains(words[i][0].toLowerCase())) {
        selectedRow = 2;
      }

      innerLoop:
      for (int j = 0; j < words[i].length; j++) {
        if (!rowWiseAlphabets[selectedRow!].contains(words[i][j])) {
          print(selectedRow);
          removableWords.add(i);
          // words.remove(words[i]);
          break innerLoop;
        }
      }
    }
    // if (removableWords.isNotEmpty) {
    //   removableWords.map((e) => words.removeAt(e));
    // }
    print(words);
    return words;
  }
}

void main() {
  Solution solution = Solution();
  List<String> result = solution.findWords(["Hello", "Alaska", "Dad", "Peace"]);
}
