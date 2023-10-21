class Solution {
  List<String> fizzBuzz(int n) {
    List<String> answer = [];
    for (int i = 1; i <= n; i++) {
      if (i % 3 == 0 && i % 5 == 0) {
        answer.add("FizzBuzz");
        continue;
      } else if (i % 3 == 0) {
        answer.add("Fizz");
        continue;
      } else if (i % 5 == 0) {
        answer.add("Buzz");
        continue;
      } else {
        answer.add(i.toString());
      }
    }
    print(answer);
    return answer;
  }
}

void main() {
  Solution solution = Solution();
  List<String> result = solution.fizzBuzz(5);
  // bool result = solution.isSubsequence("ab", "baab");
}
