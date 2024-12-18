/// Stream(비동기 프로그래밍), listen
///
/// Future: 반환값을 딱 한 번 받아내는 비동기 프로그래밍
/// Stream: 지속적으로 값을 반환 받을 때 사용
/// Stream 사용하려면 dart:async 패키지를 import 해야함.
import 'dart:async';

void main() {
  final controller = StreamController(); // StreamController 선언
  final stream = controller.stream; // Stream 가져오기

  // stream.listen() 함수를 실행하면 값이 주입될 때마다 콜백 함수를 실행한다.
  final streamListener1 = stream.listen((val) {
    print(val);
  });

  // Stream에 값을 주입하기
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
}