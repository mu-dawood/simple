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
}
