extension IterableExtensions<T> on Iterable<T> {
  /// get the first item that match expression or null if not any
  T? firstOrDefault([bool Function(T element)? test]) {
    var filtered = test == null ? this : this.where(test);
    if (filtered.length > 0)
      return filtered.first;
    else
      return null;
  }

  /// get the last item that match expression or null if not any
  T? lastOrDefault([bool Function(T element)? test]) {
    var filtered = test == null ? this : this.where(test);
    if (filtered.length > 0)
      return filtered.last;
    else
      return null;
  }

  /// map elements with index and return new map
  Iterable<E> indexedMap<E>(E f(int index, T e)) sync* {
    int index = 0;
    for (T element in this) {
      yield f(index, element);
      index++;
    }
  }

  /// loap items with index and element arguments
  void indexedForEach(void f(int index, T element)) {
    int index = 0;
    for (T element in this) {
      f(index, element);
      index++;
    }
  }
}
