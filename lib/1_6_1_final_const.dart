void main() {
  // now()는 final 키워드를 사용해야 한다.
  final DateTime now = DateTime.now();
  print(now);

  // now()는 const는 안된다. const는 빌드 타임 상수
  const DateTime now2 = DateTime.now();
  print(now2);

  // 코드를 실행할 때 값이 확정되면 final
}
