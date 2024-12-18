/// class modifiers(클래스 제한자): base, final, interface, sealed, mixin
/// 
/// mixin 클래스는 extend 가능, with 로해서 사용 가능 
mixin class MixinExample {}

// mixin 클래스는 extend 가능
class Child1 extends MixinExample {}

// mixin 클래스는 mixin으로 사용 가능
class Child2 with MixinExample {}
