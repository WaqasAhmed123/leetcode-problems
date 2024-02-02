class Solution {
  List<List<int>> transpose(List<List<int>> matrix) {
    List<List<int>> transposedMatrix = [];
    int noOfRows = matrix.length;
    int noOfCols = matrix[0].length;
    int i = 0;
    int j = 0;
    while (i < noOfCols) {
      List<int> row = [];
      j = 0;
      while (j < noOfRows) {
        row.add(matrix[j][i]);
        j++;
      }
      i++;
      transposedMatrix.add(row);
    }
    print(transposedMatrix);
    return transposedMatrix;
  }
}

void main() {
  Solution solution = Solution();
  List<List<int>> result = solution.transpose([
    // [1, 2, 3],
    // [4, 5, 6],
    // [7, 8, 9]
    [1, 2, 3], [4, 5, 6]
  ]);
}
