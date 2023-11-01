class Solution {
  String licenseKeyFormatting(String s, int k) {
    List<String> alphanumericList = s
        .split('')
        .where((char) =>
            RegExp(r'[a-zA-Z]').hasMatch(char) ||
            RegExp(r'[0-9]').hasMatch(char))
        .map((char) => char.toLowerCase() == char ? char.toUpperCase() : char)
        .toList();

    // List<String> dashList = s.split('').where((char) => char == '-').toList();
    // // // List<String> dashList = s.split('').where((char) => char == '-').toList();
     List<String> dashList = s.split('-').skip(1).toList();

    print("Alphanumeric characters: $alphanumericList");
    print("Dashes: $dashList");
    //   List<String> alphanumericList = [];
    //   List<String> dashList = [];

    // RegExp alphaRegex = RegExp(r'[a-zA-Z]');
    // RegExp digitRegex = RegExp(r'[0-9]');

    //   for (int i = 0; i < s.length; i++) {
    //     String char = s[i];

    //     if (alphaRegex.hasMatch(char) || digitRegex.hasMatch(char)) {
    //       // Convert lowercase alphabets to uppercase
    //       if (alphaRegex.hasMatch(char)) {
    //         char = char.toUpperCase();
    //       }
    //       alphanumericList.add(char);
    //     } else if (char == '-') {
    //       dashList.add(char);
    //     }
    //   }

    //   print("Alphanumeric characters: $alphanumericList");
    //   print("Dashes: $dashList");
    //   return "";
    // }
    return "";
  }
}

void main() {
  Solution solution = Solution();
  String result = solution.licenseKeyFormatting("5F3Z-2e-9-w", 4);
}
