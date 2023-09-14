class NumArray {
  List<int> nums = [];
  NumArray(List<int> nums) {
    this.nums = nums;
  }

  int sumRange(int left, int right) {
    int total = 0;

    for (int i = left; i <= right; i++) {
      total += nums[i];
    }
    print(total);
    return total;
  }
}

void main() {
  NumArray obj = NumArray([-2, 0, 3, -5, 2, -1]);
  int param1 = obj.sumRange(2, 5);
}
