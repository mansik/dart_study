/// inheritance(상속), extends
/// inheritance는 한개의 클래스만 가능
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

// extends 키워드를 사용해 inheritance할 수 있다.
class BoyGroup extends Idol {
  // super는 부모 클래스
  BoyGroup(String name, int membersCount,) :super(name, membersCount);
  //BoyGroup(super.name, super.membersCount,);

  void sayMale() {
    print('${this.name} is a male Idol'); // 자식 클래스에서 this를 사용하여 부모 클래스 멤버 접근
  }
}

void main() {
  BoyGroup bts = BoyGroup('BTS', 7);

  // 부모한테서 상속받은 메서드
  bts.sayName();
  bts.sayMembersCount();

  // 자식이 추가한 메서드
  bts.sayMale();
}
