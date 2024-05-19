class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> answer = [];
    var hashmap = Map();
    for (int i = 0; i < nums.length-1; i++){
        hashmap[nums[i]] = i;
    }
    for (int i=0;i<nums.length;i++){
        var complement = target - nums[i];
        if (hashmap.containsKey(complement) && hashmap[complement] != i){
            answer.add(i);
            answer.add(hashmap[complement]);
            break;
        }
    }
  return answer;
  }
}

// class Solution {
//   List<int> twoSum(List<int> nums, int target) {
//     List<int> answer = [];
//     for (int i = 0; i < nums.length - 1; i++) {
//         for (int j = i + 1; j < nums.length; j ++) {
//             if (nums[i] + nums[j] == target) {
//                 answer.add(i);
//                 answer.add(j);
//             }
//         }
//     }
//     return answer;
//   }
// }