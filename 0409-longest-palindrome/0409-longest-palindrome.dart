class Solution {
  int longestPalindrome(String s) {
    dynamic counter = {};
    var mx = 0;
    dynamic answer = 0;
    for (var i = 0; i < s.length; i++) {
        if (counter.containsKey(s[i])) {
            counter[s[i]] += 1;
        } else {
            counter[s[i]] = 1;
        }
    }
    print(counter.values);
    for (var n in counter.values) {
        if (n % 2 == 1) {
            if (mx <= n) {
                if (mx != 0) {
                    answer += mx - 1;
                }
                mx = n;
            } else {
                answer += n - 1;
            }
        } else {
            answer += n;
        }
    }
    answer += mx;
    return answer;
  }
}