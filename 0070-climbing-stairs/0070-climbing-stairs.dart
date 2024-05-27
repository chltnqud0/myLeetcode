class Solution {
  int climbStairs(int n) {
    if (n == 1) {return 1;}
    if (n == 2) {return 2;}
    List<int> dp = List.filled(46, 0);
    dp[1] = 1;
    dp[2] = 2;
    for (var i = 3; i <= n; i ++) {
        dp[i] = dp[i-1] + dp[i-2];
    }
    int answer = dp[n];
    return answer;
  }
}