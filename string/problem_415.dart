class Solution {
  String addStrings(String num1, String num2) {
    String sum = "";
    bool isCarry = false;

    int maxLength = num1.length > num2.length ? num1.length : num2.length;
    num1 = num1.padLeft(maxLength, '0');
    num2 = num2.padLeft(maxLength, '0');
    
    for (int i = maxLength - 1; i >= 0; i--) {
      int sumDigits = int.parse(num1[i]) + int.parse(num2[i]) + (isCarry ? 1 : 0);
      if (sumDigits < 10) {
        sum = "$sumDigits$sum";
        isCarry = false;
      } else {
        int carryDigit = sumDigits - 10;
        sum = "${carryDigit}$sum";
        isCarry = true;
      }
    }
    
    if (isCarry) {
      sum = "1$sum";
    }
    
    print(sum);
    return sum;
  }
}



void main() {
  Solution solution = Solution();
  String result = solution.addStrings("11", "123");
}
