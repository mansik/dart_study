/// named constructor(생성자)
class Idol {
  // 생성자에서 입력받는 변수들은 일반적으로 final 키워드 사용
  final String name;
  final int membersCount;

  // 기본 생성자
  Idol(this.name, this.membersCount);

  // named 생성자
  Idol.fromMap(Map<String, dynamic> map)
      : this.name = map['name'],
        this.membersCount = map['membersCount'];

  void sayName() {
    print("I am a member of ${this.name}."
        "There are ${this.membersCount} members in ${this.name}");
  }
}

void main() {
  // 기본 생성자 사용
  Idol blankPink = Idol('blackPink', 4);
  blankPink.sayName();

  Idol bts = Idol.fromMap({
    'name': 'BTS',
    'membersCount': 7,
  });
  bts.sayName();
}
