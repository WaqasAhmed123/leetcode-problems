class Solution {
  String addBinary(String a, String b) {
    if (b.isEmpty) return a;
    String output = "";
    bool isCarry = false;
    int maxLength = a.length > b.length ? a.length : b.length;
    a = a.padLeft(maxLength, '0');
    b = b.padLeft(maxLength, '0');

    for (int i = maxLength - 1; i >= 0; i--) {
      int digitA = int.parse(a[i]);
      int digitB = int.parse(b[i]);

      int sum = digitA + digitB + (isCarry ? 1 : 0);
      if (sum >= 2) {
        isCarry = true;
        sum -= 2;
      } else {
        isCarry = false;
      }

      output = '$sum$output';
    }

    if (isCarry) {
      output = '1$output';
    }

    return output;
  }
}

void main() {
  Solution solution = Solution();
  String result = solution.addBinary("1010", "1011");
  print(result); // Output: "100"
}
