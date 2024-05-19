class Solution {
  bool isValid(String s) {
    bool answer = true;
    var stack = [];
    var dict = {")" : "(", "]" : "[", "}" : "{"};
    var lst_s = s.split('');
    for (var v in lst_s) {

        if (dict.keys.contains(v)) {
            if (stack.isEmpty) {
                answer = false;
                return answer;
            }

            if (stack.removeLast() != dict[v]) {
                answer = false;
                return answer;
            } 
        } else {
            stack.add(v);
        }
    }
    if (stack.isNotEmpty) {
        answer = false;
    }
    return answer;
  }
}