class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    List ransomList = ransomNote.split("");
    List magazineList = magazine.split("");

    for (int i = 0; i < magazineList.length; i++) {
      ransomList.remove(magazineList[i]);
    }
    return ransomList.isEmpty;
  }
}
