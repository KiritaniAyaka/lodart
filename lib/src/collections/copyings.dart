import 'dart:math';

/// This extension provided some copying methods for creating new List.
///
/// In some programming paradigm, immutable is important. These methods help
/// you to create new List instead of mutating and they are extended on [List]
/// so that you can migrate from current code easily. They were named as prefix
/// `to`. Such as the copying version of [List.remove] named as `toRemoved`.
extension Copying<E> on List<E> {
  /// Returns a new list which removed specific element. The copying version
  /// of [List.remove].
  List<E> toRemoved(E element) {
    return [
      for (final e in this)
        if (e != element) e
    ];
  }

  /// Returns a new list with the element at specific index removed. The copying
  /// version of [List.removeAt].
  List<E> toRemovedAt(int index) {
    return [
      for (final (i, e) in indexed)
        if (i != index) e
    ];
  }

  /// Returns a new list which added a element at end of new list. The copying
  /// version of [List.add].
  List<E> toAdded(E element) {
    return [...this, element];
  }

  /// Returns a new list which specific index element has replaced. The copying
  /// version of `thisList[index] = element;`
  List<E> toReplaced(int index, E element) {
    return [
      for (final (i, e) in indexed)
        if (i == index) element else e
    ];
  }

  /// Returns a new list the first one element that satisfies the predicate is
  /// replaced with a new element.
  List<E> toReplacedWhere(bool Function(E e) test, E element) {
    return [
      for (final e in this)
        if (test(e)) element else e
    ];
  }

  /// Returns a new list which elements at some specific index were
  /// deleted/replaced. The copying version of [Splice.splice].
  List<E> toSpliced(int start, int deleteCount,
      [Iterable<E> replacements = const []]) {
    return [
      ...sublist(0, start),
      ...replacements,
      ...sublist(min(start + deleteCount, length)),
    ];
  }
}
