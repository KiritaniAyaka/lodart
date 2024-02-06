extension GroupBy<E> on Iterable<E> {
  /// Returns a map that grouped elements in iterable according specific key.
  ///
  /// This function requires a function to get the key of the element.
  /// All the elements which have the same key will be grouped into a list.
  ///
  /// Example:
  /// ```dart
  /// final arr = [1, 2, 3, 4, 5];
  /// final grouped = arr.groupBy((e) => e % 2 == 0 ? 'even' : 'odd');
  /// print(grouped); // {odd: [1, 3, 5], even: [2, 4]}
  /// ```
  Map<K, List<E>> groupBy<K>(K Function(E) groupFn) {
    final result = <K, List<E>>{};
    for (E e in this) {
      final k = groupFn(e);
      result.putIfAbsent(k, () => []).add(e);
    }
    return result;
  }
}
