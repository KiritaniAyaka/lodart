import 'package:lodart/lodart.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('List.splice()', () {
    test('without replacements', () {
      final arr = [1, 2, 3, 4, 5];
      arr.splice(1, 2);
      expect(arr, [1, 4, 5]);
    });

    test('with replacements', () {
      final arr = [1, 2, 3, 4, 5];
      arr.splice(1, 2, [6, 7]);
      expect(arr, [1, 6, 7, 4, 5]);
    });
  });
}
