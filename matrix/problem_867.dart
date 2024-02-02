class Solution {
  List<List<int>> transpose(List<List<int>> matrix) {
    List<List<int>> transposedMatrix = [];
    for (int i = 0; i < matrix.length; i++) {
      List<int> row = [];
      for (int j = 0; j < matrix[0].length; j++) {
        if (j <matrix.length) {
          row.add(matrix[j][i]);
        }
      }
      transposedMatrix.add(row);
      print(row);
    }
    print(transposedMatrix);
    return transposedMatrix;
  }
}

void main() {
  Solution solution = Solution();
  List<List<int>> result = solution.transpose([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
    // [1, 2, 3], [4, 5, 6]
  ]);
}
