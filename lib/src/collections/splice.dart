extension Splice<E> on List<E> {
  /// Remove or replace some elements and add new elements. Like
  /// `Array.prototype.splice()` in ECMAScript.
  ///
  /// This method is a simple wrapper of [List.replaceRange] in Dart SDK.
  ///
  /// This method is in-place. If you are looking for a copying version,
  /// consider [Copying.toSpliced].
  void splice(int start, int deleteCount,
      [Iterable<E> replacements = const []]) {
    return replaceRange(start, start + deleteCount, replacements);
  }
}
