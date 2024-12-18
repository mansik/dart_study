/// async, await (비동기 프로그래밍)
///
/// 3_2, 3_3, 3_4의 결과를 비교하기 바람
/// async와 await 키워드를 사용하면 비동기 프로그래밍의 특징을 그대로 유지하면서
/// 코드가 작성된 순서대로 실행한다.
/// await는 대기하고 싶은 비동기 함수 앞에 입력한다.
void main() {
  addNumbers(1, 1);
}

// async 키워드는 함수 매개변수 정의와 바디 사이에 입력한다.
Future<void> addNumbers(int number1, int number2) async {
  // 1.
  print('$number1 + $number2 calculation start!');

  // 2.
  // await는 대기하고 싶은 비동기 함수 앞에 입력한다.
  // Future.delayed()를 사용하면 일정 시간 후에 콜백 함수를 실행한다.
  // await가 있기 때문에 완료될때까지 대기하는 동안
  // 바로 addNumbers(1,1);의 다음 코드를 실행하다가(addNumbers(1,1); 다음 코드가 없으므로)
  // 3초 이후에 콜백 함수를 실행한다.
  // 결과는 1, 2, 3순으로 실행된다.
  await Future.delayed(Duration(seconds:3), (){
    print('$number1 + $number2 = ${number1 + number2}');
  });

  // 3.
  print('$number1 + $number2 calculation end.');
}