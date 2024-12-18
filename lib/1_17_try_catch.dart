/// try-catch, assert

void main() {
  // try
  try {
    // 에러가 없을 때 실행
    final String name = 'cat';

    // 강제로 예외 발생시키기
    throw Exception('이름이 잘못되었습니다.');

    print(name); // 위에서 예외가 발생했으므로 이쪽으로 오지 않고 catch문을 탄다.
  } catch (e) {
    // 에러가 있을 때 실행
    print(e);
  } finally {
    // 무조건 실행
    print('finally');

    // assert
    // boolean 조건이 거짓이면 run시 exception 발생시킨다.
    assert('cat' == 'dog');
  }
}
