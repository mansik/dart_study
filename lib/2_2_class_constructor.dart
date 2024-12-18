/// 생성자
class Idol {
  // 생성자에서 입력받는 변수들은 일반적으로 final 키워드 사용
  final String name;

  // 생성자
  Idol(String name): this.name = name;

  // Idol(this.name); // this.name을 매개변수로 사용하면 자동으로 적용된다.

  void sayName() {
    print("I am a member of ${this.name}.");
  }
}

void main() {
  Idol blackPink = Idol('blackPink');
  blackPink.sayName();

  Idol bts = Idol('BTS');
  bts.sayName();
}