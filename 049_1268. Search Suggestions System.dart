class Solution {
  List<List<String>> suggestedProducts(
      List<String> products, String searchWord) {
    List<List<String>> results = [];
    for (int i = 0; i < searchWord.length; i++) {
      String query = searchWord.substring(0, i + 1);
      print("query : $query");
      List<String> result = products.where((product) {
        if (product.length < i + 1) {
          return false;
        }
        return product.substring(0, i + 1) == query;
      }).toList();
      result.sort();
      if (result.length > 3) result.length = 3;
      print("result : $result");
      results.add(result);
    }

    return results;
  }
}
