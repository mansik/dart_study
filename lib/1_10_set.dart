/// Collections type: List, Set, Map
///
/// Set
void main() {
  // Set(): 중복 제거
  Set<String> blackPink = { '로제', '지수', '리사', '제니', '제니'};

  print(blackPink);
  print(blackPink.contains('로제'));
  print(blackPink.toList());

  List<String> blankPink2 = ['로제', '지수', '지수'];
  print(Set.from(blankPink2));
}