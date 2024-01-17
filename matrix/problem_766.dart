class Solution {
  bool isToeplitzMatrix(List<List<int>> matrix) {
    for (int i = matrix.length; i > 0; i--)
      if (matrix[i][i] != matrix[i - 1][i - 1]) {
        print(false);
        return false;
      }
    // int commonElement = matrix[0][0];
    // for (int i = 0; i < matrix.length; i++) {
    //   if(i<matrix[i].length)
    //   if (matrix[i][i] != commonElement) {
    //     print(false);
    //     return false;
    //   }
    // }
    print(true);
    return true;
  }
}

void main() {
  Solution solution = Solution();
  bool result = solution.isToeplitzMatrix([
    [18], [66] // [1, 2, 3, 4],
    // [5, 1, 2, 3],
    // [9, 5, 1, 2]
  ]);
}
