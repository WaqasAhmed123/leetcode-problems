class Solution {
  bool isToeplitzMatrix(List<List<int>> matrix) {
    for (int i =0; i <matrix.length-1; i++){
      for(int j=0;j<matrix[i].length-1;j++){
      if (matrix[i][j] != matrix[i + 1][j+1]) {
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
  bool result = solution.isToeplitzMatrix([
    // [18], [66] 
    // [1, 2, 3, 4],
    // [5, 1, 2, 3],
    // [9, 5, 1, 2]
    [1,2],[2,2]
  ]);
}
