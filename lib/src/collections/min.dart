/// This extension provides 2 methods to find the min element in the iterable.
extension Min<E> on Iterable<E> {
  /// Find the min element.
  ///
  /// The element should be a [Comparable].
  ///
  /// Example:
  /// ```dart
  /// final arr = [50, 100, 80, 120, 60];
  /// print(arr.min()); // 50
  /// ```
  E min() {
    var minIndex = 0;
    final list = toList();
    for (var i = 1; i < list.length; i++) {
      if ((list[minIndex] as Comparable).compareTo(list[i]) > 0) {
        minIndex = i;
      }
    }
    return elementAt(minIndex);
  }

  /// Find the min element.
  ///
  /// Using a [Comparator] to compare elements.
  ///
  /// Example:
  /// ```dart
  /// final arr = [50, 100, 80, 120, 60];
  /// // their tan values: [-0.27, -0.59, 9.00, 0.71, 0.32]
  /// print(arr.minBy((a, b) => ((tan(a) - tan(b)) * 100).toInt())); // 100
  /// ```
  E minBy(Comparator<E> comparator) {
    var minIndex = 0;
    final list = toList();
    for (var i = 1; i < list.length; i++) {
      if (comparator(list[minIndex], list[i]) > 0) {
        minIndex = i;
      }
    }
    return elementAt(minIndex);
  }
}
