void main() {
  List<String> blackPinkList = ['리사', '지수', '제니', '로제'];

  // add()
  blackPinkList.add('cat');
  print(blackPinkList);

  // remove()
  blackPinkList.remove('cat');
  print(blackPinkList);

  // where()
  final newList = blackPinkList.where(
    (name) => name == '리사' || name == '지수',
  );

  print(newList); // return Iterable
  print(newList.toList()); // Iterable => List

  // map():  List에 있는 값들을 순회하면서 값을 변경
  final newList2 = blackPinkList.map(
    (name) => 'blackPink $name',
  );

  print(newList2);
  print(newList2.toList());

  // reduce(): List에 있는 값들을 순회하면서 매개변수에 입력된 함수를 실행
  // 순회할 때마다 값을 쌓음, 처음 value = List[0] 값
  // 리스트 요소(value, element, 반환값)들의 타입이 같아야 함.
  final allMembers =
      blackPinkList.reduce((value, element) => value + ',' + element);

  print(allMembers);

  // fold(): List에 있는 값들을 순회하면서 매개변수에 입력된 함수를 실행
  // 처음 value = fold()의 첫 번째 매개변수의 값
  // reduce()와 달리 어떠한 타입도 반환할 수 있음
  final allMembers2 =
      blackPinkList.fold<int>(0, (value, element) => value + element.length);

  print(allMembers2);
}
