/// getter, setter
class Idol {
  String _name = 'blackPink';

  // getter
  String get name {
    return this._name;
  }

  //setter, oop의 immutable(불변성)특성으로 거의 사용 안함
  set name(String name) {
    this._name = name;
  }
}

void main() {
  Idol blackPink = Idol();
  blackPink.name = 'BTS'; // setter
  print(blackPink.name); // getter
}