/// Collections type: List, Set, Map
///
/// Map
void main() {
  Map<String, String> dictionary = {
    'Herry Potter': '헤리 포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저',
  };

  print(dictionary['Herry Potter']);

  // keys, values getter 사용
  print(dictionary.keys);
  print(dictionary.values);
}