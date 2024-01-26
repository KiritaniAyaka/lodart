extension DropNull<E> on Iterable<E?> {
  /// Type-friendly drop null elements in the iterable.
  ///
  /// Example:
  /// ```dart
  /// final List<int?> arr = [1, 2, null, null, 5];
  /// print(arr.dropNull()); // [1, 2, 5]
  /// ```
  List<E> dropNull() {
    final List<E> result = [];
    for (final e in this) {
      if (e != null) {
        result.add(e);
      }
    }
    return result;
  }
}
