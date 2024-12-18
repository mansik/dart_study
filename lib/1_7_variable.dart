void main() {
  // 변수 타입
  String name = 'cat';
  int age = 10;
  double pi = 3.14;
  bool isTrue = true;

  print(name);
  print(age);
  print(pi);
  print(isTrue);

  /// Strings

  // Strings
  var s1 = 'Single quotes work well for string literals';
  var s2 = "Double quotes work just as well";
  var s3 = 'it\'s esay to escape the string delimiter';
  var s4 = "It's even easier to use the other delimiter";

  print(s1);
  print(s2);
  print(s3);
  print(s4);

  var s = 'string interpolation';
  assert('Dart has $s, which is very handy' ==
      'Dart has string interpolation, '
          'which is very handy');
  assert('That deserves all caps. '
      '${s.toUpperCase()} is very handy' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy');

  // Line Strings
  var s5 = '''
  you can create
  multi-line strings like this one.
  ''';
  print(s5);

    // raw strings
  var s6 = r'In a raw string, not even \n gets special treatment';
  print(s6);
}
