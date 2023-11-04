class Solution {
  List<String> findWords(List<String> words) {
    List<String> rowWiseAlphabets = ["qwertyuiop", "asdfghjkl", "zxcvbnm"];
    int? selectedRow;
    List<int> removableWords = [];
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
        if (!rowWiseAlphabets[selectedRow!].contains(words[i][j].toLowerCase())) {
          print(selectedRow);
          removableWords.add(i);
          break innerLoop;
        }
      }
    }
    if (removableWords.isNotEmpty) {
      removableWords.sort((a, b) => b.compareTo(a));

      for (int index in removableWords) {
        if (index >= 0 && index < words.length) {
          words.removeAt(index);
        }
      }
    }
    print(removableWords);
    print(words);
    return words;
  }
}

void main() {
  Solution solution = Solution();
  List<String> result = solution.findWords(["Aasdfghjkl","Qwertyuiop","zZxcvbnm"]);
  // List<String> result = solution.findWords(["Hello", "Alaska", "Dad", "Peace"]);
}
