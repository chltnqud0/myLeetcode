class Solution {
  bool isPalindrome(String s) {
    bool answer = true;
    var low_s = s.toLowerCase();
    var lst_s = low_s.split('');
    var vaild_s = lst_s.where((s) => isAlphabet(s)).toList();
    for(var i = 0; i < vaild_s.length ~/ 2; i++ ){
        if (vaild_s[i] != vaild_s[vaild_s.length-1-i]) {
            answer= false;
            return answer;
        }
    }
    return answer;
  }

  bool isAlphabet(String s) {
  RegExp regExp = RegExp(r'^[a-z0-9]$');
  return regExp.hasMatch(s);
}
}