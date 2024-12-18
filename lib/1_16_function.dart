/// 함수
///
/// 매개변수(parameter): positional parameter, named parameter
/// anonymous function, lambda expression
/// typedef keyword: 함수의 시그니처를 정의하는 값, 함수 선언부를 정의하는 키워드
/// 시그니처는 반환타입, 매개변수 개수와 타입등을 의미

// positional parameter
int addTwoNumbers(int a, int b) {
  return a + b;
}

// named parameter: {} 사용, required = null 불가능한 변수 선언시
int addTwoNumbers2({
  required int a,
  required int b,
}) {
  return a + b;
}

// positional parameter: 기본값 적용
int addTwoNumbers3(int a, [int b = 2]) {
  return a + b;
}

// named parameter: 기본값 적용
int addTwoNumbers4({
  required int a,
  int b = 2,
}) {
  return a + b;
}

// mixed positional parameter and named parameter
int addTwoNumbers5(
  int a, {
  required int b,
  int c = 4,
}) {
  return a + b + c;
}

// typedef keyword
// : 함수의 시그니처를 정의하는 값, 함수 선언부를 정의하는 키워드
typedef Operation = void Function(int x, int y);

void add(int x, int y) {
  print('result: ${x + y}');
}

void substract(int x, int y) {
  print('result: ${x - y}');
}

void calculate(int x, int y, Operation oper) {
  oper(x, y);
}

void main() {
  // function
  print(addTwoNumbers(1, 2)); // call positional parameter
  print(addTwoNumbers2(a: 1, b: 2)); // call named parameter

  print(addTwoNumbers3(1)); // call positional parameter with default value
  print(addTwoNumbers4(a: 1)); // call named parameter with default value

  print(
      addTwoNumbers5(1, b: 1, c: 7)); // call mixed parameter with default value

  List<int> numbers = [1, 2, 3, 4, 5];

  // anonymous function: (parameter) {body}
  // anonymous function => (value, element) {}
  final sumNumbers = numbers.reduce((value, element) {
    return value + element;
  });
  print(sumNumbers);

  // lambda expression
  final sumNumbers2 = numbers.reduce((value, element) => value + element);
  print(sumNumbers2);

  // typedef
  // 1. typedef는  일반적인 변수의 type처럼 사용
  Operation oper = add;
  oper(1, 2);

  oper = substract;
  oper(1, 2);

  // 2. typedef로 선언한 함수를 매개변수로 사용
  calculate(1, 3, add);
}
