class Solution {
  int maxProfit(List<int> prices) {
    int max_p = prices[0];
    int min_p = prices[0];
    int answer = 0;
    for(int i = 0;i < prices.length-1;i++){
        if (prices[i] > prices[i + 1] && prices[i + 1] < min_p) {
            min_p = prices[i + 1];
            max_p = prices[i + 1];
        }
        if (prices[i] < prices[i+1]) {
            max_p = prices[i + 1];
            answer = max(answer, max_p - min_p);
        }
    }
    return answer;
  }
}