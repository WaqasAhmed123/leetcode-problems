class Solution {
  List<List<int>> matrixReshape(List<List<int>> mat, int r, int c) {
    if (mat.length *mat[0].length != r * c) {
    // Reshape is not possible, return the original matrix
    return mat;
  }

    List<List<int>> newMatrix = List.generate(r, (_) => []);
    int listAdder = 0;
    for (int i = 0; i < mat.length; i++) {
      for (int j = 0; j < mat[0].length; j++) {
        newMatrix[listAdder].add(mat[i][j]);
        if (newMatrix[listAdder].length == c) {
          listAdder++;
        }
      }
    }

    // newMatrix.add([] * r);
    print(newMatrix);
    return newMatrix;
  }
}

void main() {
  Solution solution = Solution();
  List<List<int>> result = solution.matrixReshape([
    [1, 2],
    [3, 4]
  ], 4, 1);
}
