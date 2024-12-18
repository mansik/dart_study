/// abstract(추상)
/// abstract은 상속이나 인터페이스로 사용하는데 필요한 속성만 정의하고
/// 인스턴스화할 수 업도록 하는 기능
/// interface 예제와 같이 Idol 클래스를 인터페이스로 사용하고
///  Idol 클래스를 따로 인스턴스화할 일이 없으면 Idol 클래스를 추상 클래스로 선언한다.

// abstract class
abstract class Idol {
  // 생성자에서 입력받는 변수들은 일반적으로 final 키워드 사용
  final String name;
  final int membersCount;

  Idol(this.name, this.membersCount);

  // 추상 메서드 선언
  void sayName();

  void sayMembersCount();
}

// implement class
class GirlGroup implements Idol {
  final String name;
  final int membersCount;

  GirlGroup(
    this.name,
    this.membersCount,
  );

  void sayName() {
    print('I am a woman Idol ${this.name}.');
  }

  void sayMembersCount() {
    print('There are ${this.membersCount} members in ${this.name}.');
  }
}

void main() {
  GirlGroup blackPink = GirlGroup('blackPink', 4);

  blackPink.sayName();
  blackPink.sayMembersCount();
}
