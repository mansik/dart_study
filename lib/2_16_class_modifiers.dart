/// class modifiers(클래스 제한자): base, final, interface, sealed, mixin
///
/// Parent 클래스는 interface 클래스
/// interface 클래스는 implement만 가능하다.
import '2_16_class_modifiers_interface.dart';

// interface 클래스는 인스턴스화 가능
Parent parent = Parent();

// 오류: interface 클래스는 extend(상속) 불가능
class Child1 extends Parent {}

// interface 클래스는 implement(재정의) 가능
class Child2 implements Parent {}
