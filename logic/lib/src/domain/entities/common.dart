import 'dart:collection';

class ListWithTotal<T> extends ListBase<T> {
  final List<T> _source;
  final int total;

  ListWithTotal(this.total, List<T> source) : _source = source;

  @override
  int get length => _source.length;

  @override
  set length(int newLength) => _source.length = newLength;

  @override
  T operator [](int index) => _source[index];

  @override
  void operator []=(int index, T value) => _source[index] = value;
}

extension ListWithTotalExt<T> on List<T> {
  ListWithTotal<T> withTotal(int total) => ListWithTotal(total, this);
}

class Location {
  final double latitude;
  final double longitude;

  Location(this.latitude, this.longitude);
}
