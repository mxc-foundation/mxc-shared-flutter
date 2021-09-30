import 'package:flutter/material.dart';

class MxcBoxShadow extends BoxShadow {
  const MxcBoxShadow({required Color color})
      : super(
          blurRadius: 7,
          color: color,
        );
  @override
  Paint toPaint() {
    final Paint result = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(BlurStyle.outer, blurSigma);
    assert(
      () {
        if (debugDisableShadows) result.maskFilter = null;
        return true;
      }(),
    );
    return result;
  }
}
