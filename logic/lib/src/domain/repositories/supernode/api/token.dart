import 'dart:async';

import '../supernode.dart';

abstract class TokenRepository {
  String? get();
  Future<String> refresh(SupernodeRepository repository);
}
