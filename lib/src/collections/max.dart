/// This extension provides 2 methods to find the max element in the iterable.
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

  /// Find the max element.
  ///
  /// Using a [Comparator] to compare elements.
  ///
  /// Example:
  /// ```dart
  /// final arr = [50, 100, 80, 120, 60];
  /// // their tan values: [-0.27, -0.59, 9.00, 0.71, 0.32]
  /// print(arr.maxBy((a, b) => ((tan(a) - tan(b)) * 100).toInt())); // 80
  /// ```
  E maxBy(Comparator<E> comparator) {
    var maxIndex = 0;
    final list = toList();
    for (var i = 1; i < list.length; i++) {
      if (comparator(list[maxIndex], list[i]) < 0) {
        maxIndex = i;
      }
    }
    return elementAt(maxIndex);
  }
}
