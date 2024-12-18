/// async, await 결과값 반환(비동기 프로그래밍)
///
/// 3_2, 3_3, 3_4의 결과를 비교하기 바람
/// await는 대기하고 싶은 비동기 함수 앞에 입력한다.
void main() async {
  // # 실행순서
  // addNumbers(1, 1);이 다 실행된 후
  // addNumbers(2, 2); 가 실행된다.
  final result = await addNumbers(1, 1);
  print('result: $result');

  final result2 = await addNumbers(2, 2);
  print('result: $result2');
}

Future<int> addNumbers(int number1, int number2) async {
  // 1.
  print('$number1 + $number2 calculation start!');

  // 2.
  // await는 대기하고 싶은 비동기 함수 앞에 입력한다.
  await Future.delayed(Duration(seconds: 1), () {
    print('$number1 + $number2 = ${number1 + number2}');
  });

  // 3.
  print('$number1 + $number2 calculation end.');

  return number1 + number2;
}
