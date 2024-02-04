extension Chunk<E> on Iterable<E> {
  /// Returns a new List that groups the elements in the Iterable according to
  /// the specified size. The remaining elements will be in the last chunk.
  ///
  /// Example:
  /// ```dart
  /// final arr = [1, 2, 3, 4, 5, 6, 7];
  /// print(arr.chunk(2)); // [[1, 2], [3, 4], [5, 6], [7]]
  /// ```
  List<List<E>> chunk(int size) {
    assert(size > 0);
    final List<List<E>> result = [];
    final length = (this.length / size).ceil();
    for (int i = 0; i < length; i++) {
      result.add([]);
    }
    for (final (i, e) in indexed) {
      result[i ~/ size].add(e);
    }
    return result;
  }
}
