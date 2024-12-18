/// final, const
void main() {
  // final: 런타임 상수, const: 빌드 타임 상수
  final String name = 'black pink';
  name = 'BTS'; // 에러 발생. final로 선언한 변수는 선언 후 값을 변경할 수 없음.

  const String name2 = 'BTS';
  name2 = 'black pink'; // 에러 발생. const로 선언한 변수는 선언 후 값을 변경할 수 없음.
}