class Solution {
  int maxProfit(List<int> prices) {
    int buyStockDay = 0;
    int boughtPrice = prices[0];
    int maxProfit = 0;

    for (int i = 1; i < prices.length; i++) {
      if (prices[i] < boughtPrice) {
        boughtPrice = prices[i];
        buyStockDay = i;
      } else {
        int currentProfit = prices[i] - boughtPrice;
        if (currentProfit > maxProfit) {
          maxProfit = currentProfit;
        }
      }
    }

    return maxProfit;
  }
}

void main() {
  Solution solution = Solution();
  solution.maxProfit([7, 6, 4, 3, 1]);
}
