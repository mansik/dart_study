/// Collections type: List, Set, Map
void main() {
  List<String> blackPinkList = ['리사', '지수', '제니', '로제'];

  print(blackPinkList);
  print(blackPinkList[0]);
  print(blackPinkList[3]);

  print(blackPinkList.length);

  blackPinkList[3] = 'cat';
  print(blackPinkList);
}
