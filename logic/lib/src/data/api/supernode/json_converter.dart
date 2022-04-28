import 'dart:developer';

import 'package:chopper/chopper.dart' as chopper;
import 'client_mapping.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class CustomJsonDecoder {
  CustomJsonDecoder(this.factories);

  final Map<Type, JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) => values
      .where((dynamic v) => v != null)
      .map<T>((dynamic v) => decode<T>(v) as T)
      .toList();
}

class JsonSerializableConverter extends chopper.JsonConverter {
  late final jsonDecoder = CustomJsonDecoder(generatedMapping);

  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse<dynamic, dynamic>(response);
    try {
      return jsonRes.copyWith<ResultType>(
        body: jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
      );
    } on TypeError catch (e, s) {
      log(
        ('❗❓❔❕❗❗❕❔❓❗' * 6) +
            '\n' +
            '🐜🐛🪲🔥🚒🧯🧑‍🚒❤️‍🔥🔜🔜 Oops. Can\'t deserialize. Is this a backend bug or ours? Who knows 🔚🔚❤️‍🔥🧑‍🚒🧯🚒🔥🪲🐛🐜' +
            '\n' +
            ('❗❓❔❕❗❗❕❔❓❗' * 6),
        error: e,
        stackTrace: s,
      );
      return chopper.Response<ResultType>(jsonRes.base, null, error: e);
    }
  }
}
