extension IterableExtensions<T> on Iterable<T> {
  T? firstOrDefault([bool Function(T element)? test]) {
    var filtered = test == null ? this : this.where(test);
    if (filtered.length > 0)
      return filtered.first;
    else
      return null;
  }

  T? lastOrDefault([bool Function(T element)? test]) {
    var filtered = test == null ? this : this.where(test);
    if (filtered.length > 0)
      return filtered.last;
    else
      return null;
  }

  Iterable<E> indexedMap<E>(E f(int index, T e)) sync* {
    int index = 0;
    for (T element in this) {
      yield f(index, element);
      index++;
    }
  }

  void indexedForEach(void f(int index, T element)) {
    int index = 0;
    for (T element in this) {
      f(index, element);
      index++;
    }
  }
}
