/// class modifiers(클래스 제한자): base, final, interface, sealed, mixin
///
/// Parent 클래스는 base 클래스
/// base 클래스는 오직 extend(상속)만 가능
/// 자식 클래스는 base, final, sealed 제한자 중 하나가 필요
import '2_14_class_modifiers_base.dart';

// base 클래스는 인스턴스화 가능
Parent parent = Parent();

// base 클래스는 extend(상속) 가능
base class Child1 extends Parent {}

// 오류: base, final, sealed 제한자 중 하나가 필요
class Child2 extends Parent {}

// 오류: base 클래스는 implement(재정의) 불가능
class Child3 implements Parent {}
