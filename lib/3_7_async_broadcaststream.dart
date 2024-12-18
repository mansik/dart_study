/// Stream(비동기 프로그래밍)
///
/// Broadcast Stream: 하나의 스트림을 여러번 listen() 할 때 사용
import 'dart:async';

void main() {
  final controller = StreamController();

  // 여러번 listen할 때는 Broadcast Stream 객체를 생성한다.
  final stream = controller.stream.asBroadcastStream();

  // 첫 번째 listen()
  final streamListener1 = stream.listen((val){
    print('listening 1');
    print(val);
  });

  // 두 번째 listen()
  final streamListener2 = stream.listen((val) {
    print('listening 2');
    print(val);
  });

  // stream에 값 주입하기
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
}