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
    if (alphanumericList.length == 1) return alphanumericList[0].toUpperCase();

    else if (alphanumericList.length % k == 0) {
      for (int i = 0; i < alphanumericList.length; i += k) {
        List<String> sublist = alphanumericList.sublist(i, i + k);
        formattedKey += sublist.join("");
        if (i != alphanumericList.length - k) {
          formattedKey += "-";
        }
        print("l1");
        print(formattedKey);
      }
    } else {
      alphanumericList
          .sublist(0, alphanumericList.length % k)
          .forEach((e) => formattedKey += e);
      formattedKey += "-";

      for (int i = alphanumericList.length % k;
          i < alphanumericList.length;
          i += k) {
        List<String> sublist = alphanumericList.sublist(i, i + k);
        formattedKey += sublist.join("");
        if (i != alphanumericList.length - k) {
          formattedKey += "-";
        }
        print("l2");

        print(formattedKey);
      }
    }
    print(formattedKey);
    return formattedKey;
  }
}

void main() {
  Solution solution = Solution();
  // String result = solution.licenseKeyFormatting("5F3Z-2e-9-w", 4);
  String result = solution.licenseKeyFormatting("2-5g-3-J", 2);
}
