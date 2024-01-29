class Solution {
  List<List<int>> flipAndInvertImage(List<List<int>> image) {
    print(image.last);
    // for (int i = 0; i < image.length; i++) {
    //   for (int j = 0; j < (image[0].length~/2)-1; j++) {
    //     if (matrix[i][j] != matrix[i + 1][j + 1]) {
    //       print(false);
    //       return false;
    //     }
    //   }
    // }
    print(true);
    return [
      [1, 1, 0],
      [1, 0, 1],
      [0, 0, 0]
    ];
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
