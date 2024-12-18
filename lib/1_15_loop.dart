/// 제어문- loop
///
/// for, while

void main() {
  // for
  for (int i = 0; i < 3; i++) {
    print(i);
  }
  print('');

  // for
  List<int> numberList = [3, 6, 9];
  for (int number in numberList) {
    print(number);
  }
  print('');

  // while
  int total = 0;

  while (total < 10) {
    total += 1;
  }
  print(total);
  print('');

  // while
  total = 0;
  do {
    total += 1;
  } while (total < 10);
  print(total);
}
