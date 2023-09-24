class Solution {
  List<int> plusOne(List<int> digits) {
    if (digits.every((element) => element == 9)) {
      digits[0] = 1;
      for (int i = 1; i < digits.length; i++) {
        digits[i] = 0;
      }
      digits.add(0);
      return (digits);
    } else if (digits.last < 9) {
      digits.last = digits.last + 1;
      print(digits);
      return (digits);
    } else if (digits.last == 9) {
      for (int i = digits.length - 1; i >= 0; i--) {
        if (digits[i] == 9) {
          digits[i] = 0;
        } else {
          digits[i]++;
          break;
        }
      }
    }

    print(digits);
    return (digits);
  }
}

void main() {
  Solution solution = Solution();
  solution.plusOne([1, 9, 9, 9]);
}
