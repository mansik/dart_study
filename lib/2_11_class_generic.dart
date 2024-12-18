/// generic: <>사용하여 만듦
/// 특정 변수의 타입을 하나의 타입으로 제한하고 싶지 않을 때 사용
/// 클래스나 함수의 정의를 선언할 때가 아니라 인스턴스화하거나 실핼할 때로 미룬다.
/// # 흔히 사용되는 제네릭 문자들
/// T: 변수 타입을 표현할 때 흔히 사용, T value
/// E: 리스트 내부 요소들의 타입을 표현할 때 흔히 사용, List<E>
/// K: key를 표현할 때 흔히 사용, Map<K, V>
/// V: value을 표현할 때 흔히 사용, Map<K, V>

// 인스턴스화할 때 입력받을 타입을 T로 지정한다.
class Cache<T> {
  // data의 타입을 추후 입력될 T 타입으로 지정한다.
  final T data;

  Cache({required this.data,});
}

void main() {
  // T의 타입을 List<int>로 입력
  final cache = Cache<List<int>>(data:[1,2,3],); // final을 사용시 클래스명 생략

  print(cache.data.reduce((value, element) => value + element));
}