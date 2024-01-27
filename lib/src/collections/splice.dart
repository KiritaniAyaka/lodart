extension Splice<E> on List<E> {
  /// Remove or replace some elements and add new elements. Like
  /// `Array.prototype.splice()` in ECMAScript.
  ///
  /// This method is a simple wrapper of [List.replaceRange] in Dart SDK.
  void splice(int start, int deleteCount,
      [Iterable<E> replacements = const []]) {
    return replaceRange(start, start + deleteCount, replacements);
  }
}
