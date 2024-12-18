/// override: 메서드 재정의
class Idol {
  // 생성자에서 입력받는 변수들은 일반적으로 final 키워드 사용
  final String name;
  final int membersCount;

  Idol(this.name, this.membersCount);

  void sayName() {
    print("I'm a member of ${this.name}.");
  }

  void sayMembersCount() {
    print('There are ${this.membersCount} members in ${this.name}.');
  }
}

class GirlGroup extends Idol {
  // constructor
  GirlGroup(super.name, super.membersCount);

  // override
  @override
  void sayName() {
    print('I am a woman Idol ${this.name}'); // 자식 클래스에서 this를 사용하여 부모 클래스 접근하였음.
  }
}

void main() {
  GirlGroup blackPink = GirlGroup('blackPink', 4);
  
  blackPink.sayName(); // 자식 클래스의 override된 메서드
  blackPink.sayMembersCount(); // 부모 클래스의 메서드
}