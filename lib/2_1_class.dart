/// class
class Idol {
  String name = 'blackPink';

  void sayName() {
    print('저는 ${this.name}입니다.'); // this: 클래스 내부의 속성을 지칭할 때 사용
    // print('저는 $this.name입니다.'); // 의도된 값과 다른 값을 반환
    print('저는 $name입니다.'); // 스코프 안에 같은 속성명이 하나만 존재하면 this 생략가능
  }
}

void main() {
  Idol blackPink = Idol(); // 인스턴스 생성
  // final blackPink1 = Idol(); // final 사용이 클래스명 생략

  blackPink.sayName();
}
