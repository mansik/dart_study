/// operators
void main() {
  print('수치 연산자');

  /// 수치 연산자
  double number = 2;

  print(number + 2);
  print(number - 2);
  print(number * 2);
  print(number / 2); // 몫
  print(number % 3); // 나머지

  number++;
  number--;

  number += 2;
  number /= 2;
  print(number /= 2);

  print('null 연산자');

  /// null 연산자 ?
  // Dart 언어는 null 연산자 없이 사용하면 null 허용 안함

  // null 허용
  double? number1 = 1;
  number1 = null;
  print(number1);

  // double number2 = null; // Error

  double? number3; // 자동으로 null값이 지정됨
  print(number3);

  number3 ??= 3; // null일 경우 3
  print(number3);

  number3 ??= 4; // null이 아니므로 number3 = 3
  print(number3);

  print('값 비교 연산자');

  /// 값 비교 연산자
  int number11 = 1;
  int number12 = 2;

  print(number11 > number12);
  print(number11 <= number12);
  print(number11 == number12);
  print(number11 != number12);

  print('타입 비교 연산자');

  /// 타입 비교 연산자
  int number21 = 1;

  print(number21 is int);
  print(number21 is String);
  print(number21 is! int);
  print(number21 is! String);

  print('논리 연산자');

  /// 논리 연산자
  bool result = 12 > 10 && 1 > 0;
  print(result);

  bool result2 = 12 > 10 && 0 > 1;
  print(result2);

  bool result3 = 12 > 10 || 1 > 0;
  print(result3);

  bool result4 = 12 < 10 || 0 > 1;
  print(result4);
}
