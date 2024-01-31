class Solution {
  List<List<int>> flipAndInvertImage(List<List<int>> image) {
    for (int i = 0; i < image.length; i++) {
      for (int j = 0; j < (image[0].length ~/ 2); j++) {
        print(image[i][j]);
        int tempt = image[i][j];
        image[i][j] = image[i][image[0].length - j - 1];
        image[i][image[0].length - j - 1] = tempt;
      }
    }
    for (int i = 0; i < image.length; i++) {
      for (int j = 0; j < (image[0].length); j++) {
        image[i][j] == 0 ? image[i][j] = 1 : image[i][j] = 0;
      }
    }
    return image;
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
