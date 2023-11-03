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

      // print("selected row is $selectedRow");
      innerLoop:
      for (int j = 1; j < words[i].length; j++) {
        if (!rowWiseAlphabets[selectedRow!].contains(words[i][j])) {
          print(selectedRow);
          removableWords.add(i);
          // words.remove(words[i]);
          break innerLoop;
        }
      }
    }
    if (removableWords.isNotEmpty) {
      // Sort the removableWords list in descending order to avoid index conflicts
      removableWords.sort((a, b) => b.compareTo(a));

      for (int index in removableWords) {
        if (index >= 0 && index < words.length) {
          words.removeAt(index);
        }
      }
    }

    // if (removableWords.isNotEmpty) {
    //   for (int i = 0; i < removableWords.length; i++) {
    //     // words.removeAt(removableWords[i]);
    //     words.r
    //   }
    // }
    print(removableWords);
    print(words);
    return words;
  }
}

void main() {
  Solution solution = Solution();
  List<String> result = solution.findWords(["Hello", "Alaska", "Dad", "Peace"]);
}
