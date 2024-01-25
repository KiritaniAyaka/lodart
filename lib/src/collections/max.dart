extension Max<E> on Iterable<E> {
  /// Find the max element.
  ///
  /// The element should be a [Comparable].
  ///
  /// Example:
  /// ```dart
  /// final arr = [50, 100, 80, 120, 60];
  /// print(arr.max()); // 120
  /// ```
  E max() {
    var maxIndex = 0;
    final list = toList();
    for (var i = 1; i < list.length; i++) {
      if ((list[maxIndex] as Comparable).compareTo(list[i]) < 0) {
        maxIndex = i;
      }
    }
    return elementAt(maxIndex);
  }
}
