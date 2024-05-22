class Solution {
  int search(List<int> nums, int target) {
    int answer = -1;
    int start = 0;
    int end = nums.length - 1;
    while (end - start > 1) {
        int pivot = start + (end - start) ~/ 2;
        if (nums[pivot] == target) {
            return pivot;
        } else if (nums[pivot] > target) {
            end = pivot;
        } else {
            start = pivot;
        }
    }
    if (nums[start] == target) {
        return start;
    } else if (nums[end] == target) {
        return end;
    }
    
    return answer;
  }
}