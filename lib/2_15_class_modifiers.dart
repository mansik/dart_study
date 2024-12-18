/// class modifiers(클래스 제한자): base, final, interface, sealed, mixin
///
/// Parent 클래스는 final 클래스
/// final 클래스는 같은 파일에서는 extend(상속)와 implement(재정의) 가능하지만
/// 외부 파일에서는 불가능
/// final 제한자는 base 제한자의 기능을 모두 포함
import '2_15_class_modifiers_final.dart';

// final 클래스는 인스턴스화 가능
Parent parent = Parent();

// 오류: final 클래스는 extend(상속) 불가능
class Child1 extends Parent {}

// 오류: final 클래스는 implement(재정의) 불가능
class Child2 implements Parent {}
