import 'package:lodart/lodart.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Iterable.chunk()', () {
    final arr = [1, 2, 3, 4, 5, 6, 7];
    expect(arr.chunk(2), [
      [1, 2],
      [3, 4],
      [5, 6],
      [7]
    ]);
  });
}
