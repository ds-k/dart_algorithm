class Solution {
  String gcdOfStrings(String str1, String str2) {
    dynamic gcd(dynamic int1, dynamic int2) {
      var a;
      var b;
      if (int1 > int2) {
        a = int1;
        b = int2;
      } else {
        a = int2;
        b = int1;
      }

      if (a % b == 0) {
        return b;
      } else {
        return gcd(b, a % b);
      }
    }

    if (str1 + str2 != str2 + str1) {
      return "";
    } else {
      var a = str1.length;
      var b = str2.length;

      var length = gcd(a, b);
      print(length);
      return str1.substring(0, length);
    }
  }
}
