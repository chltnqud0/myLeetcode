class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        answer = 0
        val_max = prices[0]
        val_min = prices[0]
        for i in range(len(prices) - 1):
            if prices[i] < prices[i + 1]:
                val_max = max(val_max, prices[i + 1])
                answer = max(answer, val_max - val_min)
            if prices[i] > prices[i + 1] and prices[i + 1] < val_min:
                val_max = prices[i + 1]
                val_min = prices[i + 1]
        return answer