class Solution {
  String addStrings(String num1, String num2) {
    int sum = int.parse(num1) + int.parse(num2);

    int maxLength = num1.length > num2.length ? num1.length : num2.length;
    num1 = num1.padLeft(maxLength, '0');
    num2 = num2.padLeft(maxLength, '0');
    print(maxLength);
    print(sum);
    print(num1);
    print(num2);
    return "";
    // for (int i = 1; i <= n; i++) {
    //   if (i % 3 == 0 && i % 5 == 0) {
    //     answer.add("FizzBuzz");
    //     continue;
    //   } else if (i % 3 == 0) {
    //     answer.add("Fizz");
    //     continue;
    //   } else if (i % 5 == 0) {
    //     answer.add("Buzz");
    //     continue;
    //   } else {
    //     answer.add(i.toString());
    //   }
    // }
    // print(answer);
    // return answer;
  }
}

void main() {
  Solution solution = Solution();
  String result = solution.addStrings("11", "123");
}
