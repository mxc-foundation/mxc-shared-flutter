import 'dart:collection';

class ListWithTotal<T> extends ListBase<T> {
  ListWithTotal(this.total, List<T> source) : _source = source;

  final List<T> _source;
  final int total;

  @override
  int get length => _source.length;

  @override
  set length(int newLength) => _source.length = newLength;

  @override
  T operator [](int index) => _source[index];

  @override
  void operator []=(int index, T value) => _source[index] = value;

  @override
  void add(T element) => _source.add(element);
}

extension ListWithTotalExt<T> on List<T> {
  ListWithTotal<T> withTotal(int total) => ListWithTotal(total, this);
}

class Location {
  Location(this.latitude, this.longitude);

  final double latitude;
  final double longitude;
}

class LocationWithHex {
  LocationWithHex(this.latitude, this.longitude, this.hexId);

  final double latitude;
  final double longitude;
  final int hexId;
}

abstract class Field<T> {
  T get value;
  set value(T value);
}
