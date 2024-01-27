import 'package:lodart/lodart.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('num.inRange()', () {
    expect(5.inRange(3, 6), true);
    expect(5.inRange(3, 5), false);
    expect(5.inRange(3, 5, includeEnd: true), true);
  });
}
