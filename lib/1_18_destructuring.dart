/// destructuring(구조 분해)
void main() {
  final newJeans = ['민지', '해린'];
  final minji1 = newJeans[0];
  final haerin1 = newJeans[1];

  print(minji1);
  print(haerin1);

  // 1. list에서 destructuring(구조 분해) 사용
  final [minji, haerin] = ['민지', '해린'];

  print(minji);
  print(haerin);

  // 2. list에서 spread operator(...)를 이용한 destructuring 사용
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  final [x, y, ..., z] = numbers;

  print(x);
  print(y);
  print(z);

  // 3. map에서 destructuring 사용
  final minjiMap = {'name': '민지', 'age': 19};
  // map 구조와 동일하게 구조 분해한다.
  final {'name': name, 'age': age} = minjiMap;

  print('name: $name');
  print('age: $age');

  // 4. 클래스에서 destructuring 사용
  final minji2 = Idol(name: '민지', age: 19);
  // 생성자 구조와 똑같이 구조 분해한다.
  final Idol(name:name2, age:age2) = minji2;

  print('name: $name2, age: $age2');
}

class Idol {
  final String name;
  final int age;

  Idol({required this.name, required this.age,});
}