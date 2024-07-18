class Solution {
  int maxSubArray(List<int> nums) {
    List<int> dp = List<int>.filled(nums.length, -9999999999999);
    dp[0] = nums[0];
    for (int i = 1; i < nums.length; i++) {
        dp[i] = max(dp[i-1] + nums[i], nums[i]);
    }
    int answer = dp.reduce((a,b) => a > b ? a : b);
    
    return answer;
  }
}