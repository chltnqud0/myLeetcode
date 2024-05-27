class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    var map_m = {};
    for(var c in magazine.split('')) {
        if (map_m.containsKey(c)) {
            map_m[c] += 1;
        } else {
            map_m[c] = 1;
        }
    }
    for (var r in ransomNote.split('')) {
        if (!map_m.containsKey(r)) {
            return false;
        } else {
            map_m[r] -= 1;
            if (map_m[r] < 0) {
                return false;
            }
        }
    }
    return true;
  }
}