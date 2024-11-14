class Solution {
  String removeStars(String s) {
    // String answer = "";
    // for(int i = 0; i < s.length; i++){
    //     if(s[i] != "*"){
    //         answer += s[i];
    //     } else {
    //         answer = answer.substring(0, answer.length - 1);
    //     }
    // }
    // return answer;
    List<String> answer = [];
    for (int i = 0; i < s.length; i++) {
      if (s[i] != "*") {
        answer.add(s[i]);
      } else {
        answer.removeLast();
      }
    }
    return answer.join();
  }
}
