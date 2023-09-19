class Solution {
  int islandPerimeter(List<List<int>> grid) {
    int perimter = 0;
    // if (grid.length == 1) {
    //   perimter = perimter + 4;
    //   return perimter;
    // }
    //     solution.islandPerimeter([
    //   [0, 1, 0, 0],
    //   [1, 1, 1, 0],
    //   [0, 1, 0, 0],
    //   [1, 1, 0, 0]
    // ]);
    for (int i = 0; i < grid.length - 1; i++) {
      for (int j = 0; j < grid[0].length - 1; j++) {
        if (grid[i][j] == 1) {
          if (i == 0 || grid[i - 1][j] == 0) {
            perimter++;
            print("1st if $perimter value of $i and $j");
          }

          if (i == grid.length - 1 || grid[i + 1][j] == 0) {
            perimter++;
            print("2nd if $perimter value of $i and $j");
          }
          if (j == 0 || grid[i][j - 1] == 0) {
            perimter++;
            print("3rd if $perimter value of $i and $j");
          }
          if (j == grid[0].length - 1 || grid[i][j + 1] == 0) {
            perimter++;
            print("4th if $perimter value of $i and $j");
          }
        }
      }
    }
    print(perimter);
    return perimter;
  }
}

void main() {
  Solution solution = Solution();
  // solution.islandPerimeter([
  //   [1],
  // ]);
  solution.islandPerimeter([
    [0, 1, 0, 0],
    [1, 1, 1, 0],
    [0, 1, 0, 0],
    [1, 1, 0, 0]
  ]);
  // solution.islandPerimeter([
  //   [0, 1, 0, 0],
  //   [1, 1, 1, 0],
  //   [0, 1, 0, 0],
  //   [1, 1, 0, 0]
  // ]);
}
