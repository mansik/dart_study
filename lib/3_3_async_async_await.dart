/// async, await(비동기 프로그래밍)
///
/// 3_2, 3_3, 3_4의 결과를 비교하기 바람
/// async와 await 키워드를 사용하면 비동기 프로그래밍의 특징을 그대로 유지하면서
/// 코드가 작성된 순서대로 실행한다.
/// await는 대기하고 싶은 비동기 함수 앞에 입력한다.
void main() {
  // # 실행순서
  // addNumbers(1, 1);의 1. 까지 실행 후
  // 2. await Future.delayed(Duration(seconds:3)에서 3초 대기해야 한다는 메시지를 받으면 멈추고
  // 다음 코드인 addNumbers(2, 2);을 실행하고
  // 1. 까지 실행 후
  // 2. await Future.delayed(Duration(seconds:3)에서 3초 대기해야 한다는 메시지를 받으면 멈추고
  // addNumbers(1, 1);의 나머지 부분 실행
  // addNumbers(2, 2);의 나머지 부분 실행
  addNumbers(1, 1);
  addNumbers(2, 2);
}

Future<void> addNumbers(int number1, int number2) async {
  // 1.
  print('$number1 + $number2 calculation start!');

  // 2.
  // await는 대기하고 싶은 비동기 함수 앞에 입력한다.
  await Future.delayed(Duration(seconds: 1), () {
    print('$number1 + $number2 = ${number1 + number2}');
  });

  // 3.
  print('$number1 + $number2 calculation end.');
}
