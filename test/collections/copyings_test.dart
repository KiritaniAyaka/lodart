import 'package:lodart/lodart.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Copyings', () {
    late List<String> arr;
    late List<String> result;

    setUp(() {
      arr = ['apple', 'banana', 'citrus', 'dewberry', 'emblica'];
    });

    test('List.toRemoved()', () {
      result = arr.toRemoved('banana');
      expect(result, ['apple', 'citrus', 'dewberry', 'emblica']);
      expect(result.hashCode, isNot(arr.hashCode));
    });

    test('List.toRemovedAt()', () {
      result = arr.toRemovedAt(3);
      expect(result, ['apple', 'banana', 'citrus', 'emblica']);
      expect(result.hashCode, isNot(arr.hashCode));
    });

    test('List.toAdded()', () {
      result = arr.toAdded('fazli');
      expect(result,
          ['apple', 'banana', 'citrus', 'dewberry', 'emblica', 'fazli']);
      expect(result.hashCode, isNot(arr.hashCode));
    });

    group('List.toSpliced()', () {
      test('without replacements', () {
        result = arr.toSpliced(3, 1);
        expect(result, ['apple', 'banana', 'citrus', 'emblica']);
        expect(result.hashCode, isNot(arr.hashCode));
      });

      test('with replacements', () {
        result = arr.toSpliced(0, 2, ['whatever']);
        expect(result, ['whatever', 'citrus', 'dewberry', 'emblica']);
        expect(result.hashCode, isNot(arr.hashCode));
      });
    });

    test('List.toReplaced()', () {
      result = arr.toReplaced(1, 'blackberry');
      expect(result, ['apple', 'blackberry', 'citrus', 'dewberry', 'emblica']);
      expect(result.hashCode, isNot(arr.hashCode));
    });
  });
}
