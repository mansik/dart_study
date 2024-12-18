/// 제어문- branches
///
/// if-case, switch
/// # switch (dart 3.0 추가사항)
/// switch문을 함수처럼 사용하여 직접 값을 반환받을 수 있는 절 기능이 추가됨.
/// 1. switch expression(스위치 표현식)
/// 2. pattern matching
/// 3. exhaustiveness checking(완전 확인)
/// 4. guard clause(가드 절)
/// code는 expression(표현식) + statement(문)으로 이루어짐
/// 1+1은 값 2를 만드는 표현식이다.
/// 문은 기본 단위이자 가장 작은 코드 실행 단위이다.

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

  // 1. switch expression(스위치 표현식)
  // switch문을 함수처럼 사용하여 직접 값을 반환받을 수 있는 절 기능
  String dayKorea = '월요일';

  String dayEnglish = switch (dayKorea) {
    // => (lambda expression)를 사용
    '월요일' => 'Monday',
    '화요일' => 'Tuesday',
    '수요일' => 'Wednesday',
    '목요일' => 'Thursday',
    '금요일' => 'Friday',
    '토요일' => 'Saturday',
    '일요일' => 'Sunday',
    // _는 default
    _ => 'Not Found',
  };

  print(dayEnglish);

  // 2. pattern matching
  switcher('aaa');
  switcher([1, 2]);
  switcher([3, 4, 5]);
  switcher([6, 7]);
  switcher(('민지', 19));
  switcher(8);

  // 3. exhaustiveness checking(엄격한 검사)
  // val에 입력될 수 있는 값은 true, false, null
  bool? val;

  // 3가지 조건을 모두 입력하여야 한다. case null: 조건을 없애면 non exhausitive switch statement 에러 발생
  // case null 대신 default: 가능
  switch (val) {
    case true:
      print('true');
      break;
    case false:
      print('false');
      break;
    case null:
      print('null');
      break;
  }

  // 4. guard clause(보호 구분): when 키워드 사용
  (int a, int b) v1 = (1, -1);

  switch (v1) {
    case (1, _) when v1.$2 > 0: // when 뒤의 조건이 true 일 경우 case 매치, false 이면 case 매치 안함.
      print('(1, _)');
      break;
    default:
      print('default');
  }
}

void switcher(dynamic anything) {
  // 2. pattern matching
  switch (anything) {
    case 'aaa':
      print('match: aaa');
      break;
    case [1, 2]:
      print('match:[1, 2]');
      break;
    case [_, _, _]: // 3개의 값이 들어 잇는 list
      print('match: [_, _, _]');
      break;
    case [int a, int b]: // 첫 번째, 두 번째 int가 입력된 list
      print('match: [int $a, int $b]');
      break;
    case (String a, int b): // 첫 번째 String, 두 번째 int 가 입력된 record
      print('match: (String $a, int $b)');
      break;
    default:
      print('no match');
  }
}
