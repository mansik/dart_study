/// 비동기(asynchronous)(비동기 프로그래밍)
///
/// Future: 미래에 받아올 값
/// Future<String> name; // 미래에 받아올 String값
/// Future<int> number;
/// Future<bool> isOpened;
/// # 주요 용어
/// 동기 작업: 동기 작업은 해당 작업이 완료되기 전에 다른 작업의 실행을 블락합니다.
/// 동기 함수: 동기 함수는 동기 작업만을 수행합니다.
/// 비동기 작업: 비동기 작업은 해당 작업이 완료되기 전에도 다른 작업을 실행할 수 있게 합니다.
/// 비동기 함수: 비동기 함수는 적어도 한 개 이상의 비동기 작업을 수행하며 동기 작업도 수행이 가능합니다.
void main() {
  addNumbers(1, 1);
}

void addNumbers(int number1, int number2) {
  // 1
  print('$number1 + $number2 calculation start!');

  // 2
  // Future.delayed()를 사용하면 일정 시간 후에 콜백 함수를 실행한다.
  // 여기서, cpu가 3초 대기해야 한다는 메시지를 받으면 바로 다음 코드를 바로 실행한다.
  // 그래서 결과는 1, 3, 2 순서로 실행된다.
  Future.delayed(Duration(seconds: 3), () {
    print('$number1 + $number2 = ${number1 + number2}');
  });

  // 3
  print('$number1 + $number2 calculation end.');
}
