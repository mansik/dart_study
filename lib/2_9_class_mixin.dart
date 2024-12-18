/// mixin: 특정 클래스에 원하는 기능들만 골라 넣을 수 있는 기능
/// 특정 클래스를 지정해서 속성들을 정의 할 수 있으며
/// 지정한 클래스를 상속하는 클래스에서도 사용가능
/// 한개의 클래스에 여러개 지정 가능
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

// mixin 정의(mixin~on):  특정 클래스를 지정해서 속성들을 정의
mixin IdolSingMixin on Idol {
  void sing() {
    print('${this.name} is singing.');
  }
}

// mixin 사용: with 키워드를 사용
class BoyGroup extends Idol with IdolSingMixin {
  BoyGroup(super.name, super.membersCount,);

  void sayMale() {
    print('I am a male Idol.');
  }
}

void main() {
  BoyGroup bts = BoyGroup('BTS', 7);

  // mixin에 정의된 sing() 메서드 사용
  bts.sing();
}

