class Solution {
  List<List<int>> floodFill(List<List<int>> image, int sr, int sc, int color) {
    int initialColor = image[sr][sc];
    image[sr][sc] = color;
    for (int i = 0; i < image.length; i++) {
      for (int j = 0; j < image[0].length; j++) {
        if (image[i][j] == initialColor) {
          if (i == 0 &&
              j == 0 &&
              (image[i + 1][j] == initialColor ||
                  image[i + 1][j] == color ||
                  image[i][j + 1] == initialColor ||
                  image[i][j + 1] == color)) {
            image[i][j] = color;
          } else if (i == 0 &&
              j == image[0].length - 1 &&
              (image[i + 1][j] == initialColor ||
                  image[i + 1][j] == color ||
                  image[i][j - 1] == initialColor ||
                  image[i][j - 1] == color)) {
            image[i][j] = color;
          } else if (i == image.length - 1 &&
              j == 0 &&
              (image[i - 1][j] == initialColor ||
                  image[i - 1][j] == color ||
                  image[i][j + 1] == initialColor ||
                  image[i][j + 1] == color)) {
            image[i][j] = color;
          } else if (i == image.length - 1 &&
              j == image[0].length - 1 &&
              (image[i - 1][j] == initialColor ||
                  image[i - 1][j] == color ||
                  image[i][j - 1] == initialColor ||
                  image[i][j - 1] == color)) {
            image[i][j] = color;
            print("executed");
          } else if ((i > 0 &&
                  (image[i - 1][j] == initialColor ||
                      image[i - 1][j] == color)) ||
              (i < image.length - 1 &&
                  (image[i + 1][j] == initialColor ||
                      image[i + 1][j] == color)) ||
              (j > 0 &&
                  (image[i][j - 1] == initialColor ||
                      image[i][j - 1] == color)) ||
              (j < image[0].length - 1 &&
                  (image[i][j + 1] == initialColor ||
                      image[i][j + 1] == color))) {
            image[i][j] = color;
          }
        }
      }
    }
    print(image[0]);
    print(image[1]);
    return image;
  }
}

void main() {
  Solution solution = Solution();
  List<List<int>> result = solution.floodFill([
    [0, 0, 1],
    [1, 0, 1]
  ], 1, 0, 2
      //   [1, 1, 1],
      //   [1, 1, 0],
      //   [1, 0, 1]
      // ], 1, 1, 2
      );
}
