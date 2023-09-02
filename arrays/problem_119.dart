class Solution {
  BigInt computeFactorial(int k) {
    if (k == 0) {
      return BigInt.one;
    }
    BigInt result = BigInt.from(k);
    for (int i = k - 1; i >= 2; i--) {
      result *= BigInt.from(i);
    }
    return result;
  }

  BigInt nChooseK(int n, int k) {
    BigInt ans =
        computeFactorial(n) ~/ (computeFactorial(k) * computeFactorial(n - k));
    return ans;
  }

  List<int> getRow(int rowIndex) {
    if (rowIndex == 0) {
      return [1];
    }
    List<int> output = [];
    for (int i = 0; i <= rowIndex; i++) {
      output.add(nChooseK(rowIndex, i).toInt());
    }
    print(output);
    return output;
  }
}

void main() {
  Solution solution = Solution();
  solution.getRow(21);
}
