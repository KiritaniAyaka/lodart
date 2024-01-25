import 'package:lodart/lodart.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Iterable.groupBy()', () {
    final arr = [1, 2, 3, 4, 5];
    final grouped = arr.groupBy((e) => e % 2 == 0 ? 'even' : 'odd');
    expect(
        grouped,
        equals({
          'odd': [1, 3, 5],
          'even': [2, 4],
        }));
  });
}
