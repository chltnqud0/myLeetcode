import re
class Solution:
    def isPalindrome(self, s: str) -> bool:
        new_s = list(filter(str.isalnum, s.lower()))
        print(new_s)
        if len(new_s) == 1:
            return True
        for i in range(len(new_s)//2):
            if new_s[i] != new_s[-1-i]:
                return False
        return True