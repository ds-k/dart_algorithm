class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    int top = 0;
    int bottom = matrix.length - 1;
    int left = 0;
    int right = matrix[0].length - 1;

    List<int> answer = [];
    while (top <= bottom && left <= right) {
      print("$top, $bottom // $left, $right --> answer : $answer");
      // left -> right
      for (int i = left; i <= right; i++) {
        answer.add(matrix[top][i]);
      }
      top++;
      print("$top, $bottom // $left, $right --> answer : $answer");
      // top -> bottom
      for (int i = top; i <= bottom; i++) {
        answer.add(matrix[i][right]);
      }
      right--;

      print("$top, $bottom // $left, $right --> answer : $answer");
      // right -> left
      if (top <= bottom) {
        for (int i = right; i >= left; i--) {
          answer.add(matrix[bottom][i]);
        }
        bottom--;
      }

      print("$top, $bottom // $left, $right --> answer : $answer");
      // bottom -> top
      if (left <= right) {
        for (int i = bottom; i >= top; i--) {
          answer.add(matrix[i][left]);
        }
        left++;
      }
    }

    return answer;
  }
}
