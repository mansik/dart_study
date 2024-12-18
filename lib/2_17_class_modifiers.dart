/// class modifiers(클래스 제한자): base, final, interface, sealed, mixin
///
/// Parent 클래스는 sealed 클래스
/// sealed 클래스는 파일 외부에서 extend, implement, 인스턴스화할 수 없도록 제한한다.
import '2_17_class_modifiers_sealed.dart';

// 오류: sealed 클래스는 인스턴스화 불가능
Parent parent = Parent();

// 오류: sealed 클래스는 extend(상속) 불가능
class Child1 extends Parent {}

// 오류: sealed 클래스는 implement(재정의) 불가능
class Child2 implements Parent {}
