/// cascade operator: 인스턴스에서 해당 인스턴스의 속성이나 멤버 함수를 연속해서 사용하는 기능
///
/// 연산자는 ..기호 사용
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

void main() {
  //cascade operator
  Idol blackPink = Idol('blackPink', 4)
    ..sayName()
    ..sayMembersCount();
}
