import 'package:collection/collection.dart';
class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
        return false;
    }
    var answer = true;
    var mapEquality = MapEquality();
    Map<String,int> map1 = {};
    Map<String,int> map2 = {};
    for (var i = 0;i < s.length; i++){
        map1.update(s[i], (value) => value + 1, ifAbsent: () => 1);
        map2.update(t[i], (value) => value + 1, ifAbsent: () => 1);
    }
    answer = mapEquality.equals(map1, map2);
    return answer;
  }
}