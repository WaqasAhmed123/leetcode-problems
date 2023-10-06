class Solution {
  String reverseVowels(String s) {
    Map<String, String> vowels = {
      "a": "A",
      "e": "E",
      "i": "I",
      "o": "O",
      "u": 'U'
    };
    
    List<String> sList = s.split("");
    int left = 0;
    int right = sList.length - 1;
    bool isFoundOnLeft = false;
    bool isFoundOnRight = false;
    late int saveRightIndex;
    late int saveLeftIndex;
    while (left < right) {
      if (vowels.containsKey(sList[left]) ||
          vowels.containsValue(sList[left])) {
        print("left index is $left");
        saveLeftIndex = left;
        isFoundOnLeft = true;
      }
      else{
        left++;
        continue;
      }
      if (vowels.containsKey(sList[right]) ||
          vowels.containsValue(sList[right])) {
        print("right index is $right");
        saveRightIndex = right;
        isFoundOnRight = true;
      }
      else{
        right--;
        continue;
      }
      if (isFoundOnRight && isFoundOnLeft) {
        String temp = sList[saveLeftIndex];
        sList[saveLeftIndex] = sList[saveRightIndex];
        sList[saveRightIndex] = temp;
        isFoundOnLeft = false;
        isFoundOnRight = false;
        print("executed");
      }

      left++;
      right--;
    }
    print(sList.join());
    return sList.join();
  }
}

void main() {
  Solution solution = Solution();
  // var result = solution.reverseVowels("leetcode");
  var result = solution.reverseVowels("Euston saw I was not Sue.");
}
