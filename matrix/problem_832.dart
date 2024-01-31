class Solution {
  List<List<int>> flipAndInvertImage(List<List<int>> image) {
    // print(image[image.length - 1]);
    for (int i = 0; i < image.length; i++) {
      for (int j = 0; j < (image[0].length ~/ 2); j++) {
        // if (matrix[i][j] != matrix[i + 1][j + 1])
        //  {
        //   print(false);
        //   return false;
        // }
        print(image[i][j]);
        int tempt = image[i][j];
        image[i][j] = image[i][image[0].length - j - 1];
        image[i][image[0].length - j - 1] = tempt;
        //  image[i][image[0].length - j + 1]= tempt;
      }
    }
    print(image);
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
