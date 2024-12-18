/// records
void main() {
  // record type 1
  var record = ('first', a: 2, b: true, 'last');

  print(record);
  print(record.$1); // positional fields
  print(record.$2);
  print(record.a); // named fields

  // record type 2: positional fields
  (String, int) record2 = ('A string', 123);
  print(record2);
  print(record2.$1);

  // record type 3: named fields
  ({int a, bool b}) record3 = (a: 123, b: true);
  print(record3);
  print(record3.a);

  // record's type
  ({int a, int b}) recordAB = (a: 1, b:2);
  ({int x, int y}) recordXY = (x: 3, y:4);
  // recordAB = recordXY; // Compile error! 동일한 Type 이 아님

  (int a, int b) recordA1 = (1, 2);
  (int x, int y) recordX1 = (3, 4);
  recordA1 = recordX1; // OK


  // swap
  (int, int) swap((int, int) record1) {
    var (a, b) = record1;
    return (b, a);
  }

  print(swap((1, 2)));
}
