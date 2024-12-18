/// private variable
class Idol {
  // '_'로 변수명을 시작하면 private variable를 선언할 수 있다.
  // 같은 파일에서만 접근 가능
  String _name;

  Idol(this._name);
}

void main() {
  Idol blackPink = Idol('blackPink');
  // 같은 파일에서는 private 변수에 접근 가능
  // 다른 파일에서는 private 변수에 접근 불가능
  print(blackPink._name);
}