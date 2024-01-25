import 'package:lodart/lodart.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Iterable.unique()', () {
    final arr = [1, 2, 3, 1, 3];
    expect(arr.unique(), [1, 2, 3]);
  });

  test('Iterable.uniqueBy()', () {
    final arr = [1, 2, 3, 4, 5];
    expect(arr.uniqueBy((e) => e % 3), [1, 2, 3]);
  });
}
