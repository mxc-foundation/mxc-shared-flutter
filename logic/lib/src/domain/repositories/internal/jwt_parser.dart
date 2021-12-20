import 'dart:convert';

Map<String, dynamic> parseJwt(String jwt) {
  final splitted = jwt.split('.');
  if (splitted.length < 2) throw Exception('Bad JWT');
  var encoded = splitted[1];

  // need to add tail, otherwise base64 throws.
  switch (encoded.length % 4) {
    case 1:
      break;
    case 2:
      encoded += '==';
      break;
    case 3:
      encoded += '=';
      break;
  }
  final json = utf8.decode(base64.decode(encoded));
  return jsonDecode(json) as Map<String, dynamic>;
}
