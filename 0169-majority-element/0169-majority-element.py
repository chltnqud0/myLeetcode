from collections import Counter
class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        c_n = Counter(nums)
        
        return c_n.most_common(1)[0][0]