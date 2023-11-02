class Solution {
  String licenseKeyFormatting(String s, int k) {
    String formattedKey = "";
    List<String> alphanumericList = s
        .split('')
        .where((char) =>
            RegExp(r'[a-zA-Z]').hasMatch(char) ||
            RegExp(r'[0-9]').hasMatch(char))
        .map((char) => char.toLowerCase() == char ? char.toUpperCase() : char)
        .toList();

    List<String> dashList = s.split('').where((char) => char == '-').toList();
    if (s.length % k == 0) {
      for (int i = 0; i < s.length; i += k) {
        List<String> sublist = alphanumericList.sublist(i, i + k);
        formattedKey += sublist.join(" ");
        print("l1");
        print(formattedKey);
      }
    } else {
      alphanumericList
          .sublist(0, s.length % k)
          .forEach((e) => formattedKey += e);

      for (int i = s.length % k; i < s.length; i += k) {
        List<String> sublist = alphanumericList.sublist(i, i + k);
        formattedKey += sublist.join(" ");
        print("l2");

        print(formattedKey);
      }
    }
    print(formattedKey);
    return "";
  }
}

void main() {
  Solution solution = Solution();
  String result = solution.licenseKeyFormatting("5F3Z-2e-9-w", 4);
}
