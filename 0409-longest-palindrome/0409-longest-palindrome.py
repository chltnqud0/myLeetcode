from collections import Counter
class Solution:
    def longestPalindrome(self, s: str) -> int:
        c_s = Counter(s)
        answer = 0
        flag = False
        for a, b in c_s.most_common():
            if b % 2:
                if b > 1:
                    answer += b - 1
                    flag = True
                else:
                    flag = True
            else:
                answer += b
        else:
            if flag:
                answer += 1
        
        return answer