/// var
void main() {
  // var: 자동타입 추론, 데이터형이 정해지고 나면 다른 데이터형을 할당 할 수 없음
  var name = 'cat';
  print(name);

  // 변수값 변경 가능
  name = "rabbit";
  print(name);

  // name에 문자열이 아닌 숫자를 입력하면 오류 발생
  // name이 이미 string 형으로 된 상태임.
  // var대신 dynamic을 사용한 변수 선언을 해야함.
  //name = 1;

  // 변수명 중복은 불가능
  // 다음은 에러 발생
  // var name ='vvv';


  // list
  var animals = ['cat', 'dog', 'rabbit'];
  print(animals[0]);

  // Object
  Object object = 'Bob';
  print(object);
}
