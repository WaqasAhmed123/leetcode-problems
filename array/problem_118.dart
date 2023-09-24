class Solution {
  List<List<int>> generate(int numRows) {
    List<List<int>> output = [];
    for (int i = 0; i < numRows; i++) {
      output.add([]);
      for (int j = 0; j <= i; j++) {
        if (j == 0 || j == i) {
          output[i].add(1);
        } else {
          output[i].add(output[i - 1][j - 1] + output[i - 1][j]);
        }
      }
    }
    print(output);
    return output;
  }
}

void main() {
  Solution solution = Solution();
  solution.generate(5);
}
