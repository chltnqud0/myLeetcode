class Solution {
  int majorityElement(List<int> nums) {
    if (nums.length == 1) {
        return nums[0];
    }
    var hashmap = {};
    var target = nums.length / 2;
    for (int n in nums) {
        if (hashmap.containsKey(n)) {
            hashmap[n] += 1;
            if (hashmap[n] > target) {
                return n;
            }
        } else {
            hashmap[n] = 1;
        }
    }

    return 0;
  }
}