/// 제어문- branches
/// if-case, switch

enum Status {
  approved,
  pending,
  rejected,
}

void main() {
  int number = 2;
  Status status = Status.approved;

  // if-case
  if (number % 3 == 0) {
    print('3의 배수입니다.');
  } else if (number % 3 == 1) {
    print('나머지가 1입니다.');
  } else {
    print('맞는 조건이 없습니다.');
  }

  // switch
  switch (status) {
    case Status.approved:
      print('approved.');
      break;
    case Status.pending:
      print('pending.');
      break;
    case Status.rejected:
      print('rejected.');
      break;
    default:
      print('unknown Status.');
  }

  // enum의 값을 list로 반환
  print(Status.values);
}
