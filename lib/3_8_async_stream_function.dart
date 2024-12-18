/// Stream(비동기 프로그래밍), listen
///
/// StreamController를 사용하지 않고 스트립을 반환하는 함수 작성
import 'dart:async';

// Stream을 반환하는 함수는 async*로 선언한다.
Stream<String> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    // StreamController의 add()처럼 yield 키워드를 이용해서 값 반환
    yield 'i = $i';

    await Future.delayed(Duration(seconds: 1));
  }
}

void playStrem() {
  calculate(1).listen((val) {
    print(val);
  });
}

void main() {
  playStrem();
}