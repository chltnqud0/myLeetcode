class Solution {
  String addBinary(String a, String b) {
    int leng = max(a.length, b.length);
    var temp_a = "0";
    var temp_b = "0";
    var carry = '0';
    var answer = [];
    for (var i = 0; i < leng; i++) {
        if (i < a.length) {
            temp_a = a[a.length-i-1];

        } else {
            temp_a = "0";
        }
        if (i < b.length) {
            temp_b = b[b.length-i-1];
        } else {
            temp_b = "0";
        }
        if (carry == "1") {
            if (temp_a == "1" && temp_b == "1"){
                carry = "1";
                answer.insert(0,"1");
            } else if (temp_a == "1" || temp_b == "1") {
                carry = "1";
                answer.insert(0,"0");
            } else {
                carry = "0";
                answer.insert(0,"1");
            }
        } else {
            if (temp_a == "1" && temp_b == "1"){
                carry = "1";
                answer.insert(0,"0");
            } else if (temp_a == "1" || temp_b == "1") {
                carry = "0";
                answer.insert(0,"1");
            } else {
                carry = "0";
                answer.insert(0,"0");
            }
        }
    }
    if (carry == "1") {
        answer.insert(0,"1");
    }
    return answer.join();
  }
}