/// interface, implements
/// inheritance는 공유되는 기능을 이어받는 개념, 한개만 가능
/// interface는 공통으로 필요한 기능을 정의만 해두는 역할, 여러개 가능
///
/// interface 클래스는 정의만,
/// implement 클래스는 interface 클래스의 모든 기능(멤버, 메서드)을 다시 정의해줘야 한다.

// interface class
class Idol {
  // 생성자에서 입력받는 변수들은 일반적으로 final 키워드 사용
  final String name;
  final int membersCount;

  Idol(this.name, this.membersCount);

  void sayName() {
    print("I'm a member of ${this.name}.");
  }

  void sayMembersCount() {}
}

// implement class(구현 클래스)
// Idol 클래스를 interface 클래스로 사용하였음.
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
