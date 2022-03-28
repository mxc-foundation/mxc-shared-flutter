import 'dart:io';
import 'package:dotenv/dotenv.dart' show load, env;

String get supernodeAddress => env['SUPERNODE_ADDRESS']!;
String get login => env['LOGIN']!;
String get password => env['PASSWORD']!;

void initSecure() => load(envFile);

String get dirPath {
  final fullPathSegments = Platform.script.pathSegments;
  final folderPathSegments =
      fullPathSegments.take(fullPathSegments.length - 1).toList();
  // adds support to run flutter test from logic dir, not only from logic/test
  if (folderPathSegments.last != 'test') {
    folderPathSegments.add('test');
  }
  return "/${folderPathSegments.join("/")}";
}

String get envFile {
  return '$dirPath/.env';
}
