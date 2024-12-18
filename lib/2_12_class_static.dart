/// static: 변수와 메서드등이 인스턴스에 귀속되는 것이 아닌 클래스 자체에 귀속
///
/// 인스턴스끼리 공유해야하는 정보에 지정한다.
/// static 변수는 클래스에 직접 귀속되기 때문에 생성자에서 static값을 지정하지 못한다.
class Counter {
  static int i = 0;

  //Counter(this.i); // 안됨

  Counter(){
    // this.i가 아님
    i++;
    print(i);
  }
}

void main() {
  Counter count1 = Counter();
  Counter count2 = Counter();
  Counter count3 = Counter();
}
