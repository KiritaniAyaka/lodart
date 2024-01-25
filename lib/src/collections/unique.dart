extension Unique<E> on Iterable<E> {
  /// Returns a new list without duplicate elements.
  ///
  /// For an object or class, please override [==] operator and [hashCode].
  ///
  /// Or consider use [uniqueBy] instead.
  ///
  /// Example:
  /// ```dart
  /// final arr = [1, 2, 3, 1, 3];
  /// print(arr.unique()); // [1, 2, 3]
  /// ```
  List<E> unique() {
    return {...this}.toList();
  }
}
