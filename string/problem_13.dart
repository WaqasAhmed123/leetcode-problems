class Solution {
  int romanToInt(String s) {
    int number = 0;
    bool checked = false;
    Map<String, int> romanValues = {
      "I": 1,
      "IV": 4,
      "V": 5,
      "IX": 9,
      "X": 10,
      "XL": 40,
      "L": 50,
      "XC": 90,
      "C": 100,
      "CD": 400,
      "D": 500,
      "CM": 900,
      "M": 1000
    };
    for (int i = s.length - 1; i >= 0; i--) {
      if (i > 0) {
        String twoChars = s[i - 1] + s[i];
        if (romanValues.containsKey(twoChars)) {
          if (s[i - 1] + s[i] == 'IV' ||
              s[i - 1] + s[i] == 'IX' ||
              s[i - 1] + s[i] == 'XL' ||
              s[i - 1] + s[i] == 'XC' ||
              s[i - 1] + s[i] == 'CD' ||
              s[i - 1] + s[i] == 'CM') {
            number += romanValues[twoChars] as int;
            if (i == 1) {
              checked = true;
            } else {
              i--;
            }
          }
        } else {
          if (romanValues.containsKey(s[i])) {
            number += romanValues[s[i]] as int;
          }
        }
      } else if (i == 0 && checked == false && romanValues.containsKey(s[i])) {
        number += romanValues[s[i]] as int;
      }
    }
    return number;
  }
}

void main() {
  Solution solution = Solution();

  int result = solution.romanToInt("MCMXCIV");
}
