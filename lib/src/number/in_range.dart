import 'dart:math';

extension InRange<T extends num> on T {
  /// Returns if this number is in the range `[start, end)`. (defaults)
  ///
  /// Note that in defaults, the [end] is not included in the range.
  /// If you should include [end], set [includeEnd] to true.
  ///
  /// Example:
  /// ```dart
  /// print(5.inRange(3, 6)); // true
  /// print(5.inRange(3, 5)); // false
  /// print(5.inRange(3, 5, includeEnd: true)); // true
  /// ```
  bool inRange(T start, T end, {bool includeEnd = false}) {
    return this >= min(start, end) &&
        (includeEnd ? this <= max(start, end) : this < max(start, end));
  }
}
