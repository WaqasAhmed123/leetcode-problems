class Solution {
  List<List<int>> flipAndInvertImage(List<List<int>> image) {
    for (int i = 0; i < matrix.length - 1; i++) {
      for (int j = 0; j < matrix[i].length - 1; j++) {
        if (matrix[i][j] != matrix[i + 1][j + 1]) {
          print(false);
          return false;
        }
      }
    }
    print(true);
    return true;
  }
}

void main() {
  Solution solution = Solution();
  List<List<int>> result = solution.flipAndInvertImage([
    [1, 1, 0], [1, 0, 1], [0, 0, 0]
    // [18], [66]
    // [1, 2, 3, 4],
    // [5, 1, 2, 3],
    // [9, 5, 1, 2]
  ]);
}
