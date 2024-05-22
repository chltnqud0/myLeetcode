class Solution:
    def search(self, nums: List[int], target: int) -> int:
        answer = -1
        start = 0
        end = len(nums) - 1
        while end - start > 1:
            pivot = start + (end - start) // 2
            if nums[pivot] == target:
                return pivot
            elif nums[pivot] > target:
                end = pivot
            else:
                start = pivot
        if nums[start] == target:
            return start
        if nums[end] == target:
            return end
        return answer


