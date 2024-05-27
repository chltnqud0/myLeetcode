class Solution:
    list_temp = [0] * 46
    list_temp[1] = 1
    list_temp[2] = 2
    def climbStairs(self, n: int) -> int:
        if self.list_temp[n]:
            return self.list_temp[n]
        else:
            int_temp = self.climbStairs(n - 1) + self.climbStairs(n - 2)
            self.list_temp[n] = int_temp
            return int_temp
        