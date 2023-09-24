
class Solution {
  List<String> summaryRanges(List<int> nums) {
    if (nums.isEmpty) return [];
    if (nums.length == 1) {
      return ['${nums.first}'];
    }

    int start = nums[0];
    int end = nums[0];
    List<String> output = [];

    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i + 1] != nums[i] + 1) {
        end = nums[i];
        if (start == end) {
          output.add("$start");
          start = nums[i + 1];
        } else {
          output.add("$start->$end");
          start = nums[i + 1];
        }
        if (i == nums.length - 2) {
          output.add("${nums[i + 1]}");
        }
      } else if (nums[i + 1] == nums[i] + 1) {
        end = nums[i + 1];
        if (i == nums.length - 2) {
          output.add("$start->$end");
        }
        continue;
      }
    }
    return output;
  }
}

void main() {
  Solution solution = Solution();
  // List<String> result = solution.summaryRanges([0, 1, 2, 4, 5, 7]);
  List<String> result = solution.summaryRanges([-1]);
  print(result); // Output: ["0->2", "4->5", "7"]
}
