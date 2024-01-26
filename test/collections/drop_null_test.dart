import 'package:lodart/lodart.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Iterable.dropNull()', () {
    final List<int?> arr = [1, 2, null, null, 5];
    expect(arr.dropNull(), [1, 2, 5]);
  });
}
