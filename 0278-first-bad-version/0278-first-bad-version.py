# The isBadVersion API is already defined for you.
# def isBadVersion(version: int) -> bool:

class Solution:
    def firstBadVersion(self, n: int) -> int:
        if isBadVersion(1):
            return 1
        start = 1
        end = n
        
        while True:
            if (end - start) % 2:
                temp = (end - start) // 2 + 1 + start
            else:
                temp = (end - start) // 2 + start


            if isBadVersion(temp):
                end = temp
            else:
                start = temp
            if end - start == 1:
                return end

                