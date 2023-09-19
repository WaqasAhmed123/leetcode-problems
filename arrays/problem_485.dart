class Solution {
  int findMaxConsecutiveOnes(List<int> nums) {
    int maxCount = 0;
    int count = 0;

    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] == 1) {
        count++;
        if (nums[i + 1] == 1) {
          count++;
          print(i);
        } else {
          count--;
          maxCount = count;
        }
      }
      // if (nums[i] == 1 && nums[i + 1] == 1) {
      //   print(i);
      //   print(i + 1);
      //   print("----------");
      //   // if (i == 0) {
      //   count = count + 2;
      //   // i++=
      //   // }
      //   // count++;
      // } else if (count > maxCount) {
      //   maxCount = count;
      //   count = 0;
      // } else if (count < maxCount) {
      //   count = 0;
      // }
    }
    print(maxCount);
    return maxCount;
  }
}

void main() {
  Solution solution = Solution();
  solution.findMaxConsecutiveOnes([1, 1, 0, 1, 1, 1]);
}
