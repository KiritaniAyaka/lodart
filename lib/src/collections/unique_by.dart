extension UniqueBy<E> on Iterable<E> {
  /// Returns a new list without duplicate elements.
  ///
  /// This function requires a function to generate a unique key for every element.
  /// The element that returns the same key will be regarded as the same.
  ///
  /// Example:
  /// ```dart
  /// final arr = [1, 2, 3, 4, 5];
  /// print(arr.uniqueBy((e) => e % 3)); // [1, 2, 3]
  /// ```
  List<E> uniqueBy<K>(K Function(E) uniqueKeyFn) {
    final Set<K> duplicateSet = {};
    final list = toList();
    final List<E> result = [];
    for (var i = 0; i < list.length; i++) {
      final key = uniqueKeyFn(list[i]);
      if (duplicateSet.add(key)) {
        result.add(list[i]);
      }
    }
    return result;
  }
}
