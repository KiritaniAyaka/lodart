import 'dart:math';

import 'package:lodart/lodart.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Iterable.max()', () {
    final arr = [50, 100, 80, 120, 60];
    expect(arr.max(), 120);
  });
  test('Iterable.maxBy()', () {
    final arr = [50, 100, 80, 120, 60];
    // their tan values: [-0.27, -0.59, 9.00, 0.71, 0.32]
    expect(arr.maxBy((a, b) => ((tan(a) - tan(b)) * 100).toInt()), 80);
  });
}
