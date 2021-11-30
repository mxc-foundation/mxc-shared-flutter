import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'colors.dart';

class FontTheme {
  FontTheme(this._colorsTheme);

  final ColorsTheme _colorsTheme;

  static FontTheme of(BuildContext context, {bool listen = true}) {
    return Provider.of<FontTheme>(context, listen: listen);
  }

  TextStyle get _baseTextStyle => TextStyle(
        color: _colorsTheme.textPrimaryAndIcons,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        height: 1.33333,
        decoration: TextDecoration.none,
      );

  TextStylePack get caption1 =>
      TextStylePack(_colorsTheme, _baseTextStyle.copyWith(fontSize: 12));
  TextStylePack get caption2 => TextStylePack(_colorsTheme,
      _baseTextStyle.copyWith(fontWeight: FontWeight.w500, fontSize: 12));

  TextStylePack get subtitle1 =>
      TextStylePack(_colorsTheme, _baseTextStyle.copyWith(fontSize: 14));
  TextStylePack get subtitle2 => TextStylePack(_colorsTheme,
      _baseTextStyle.copyWith(fontWeight: FontWeight.w500, fontSize: 14));

  TextStylePack get body1 =>
      TextStylePack(_colorsTheme, _baseTextStyle.copyWith(fontSize: 16));
  TextStylePack get body2 => TextStylePack(_colorsTheme,
      _baseTextStyle.copyWith(fontWeight: FontWeight.w500, fontSize: 16));

  TextStylePack get h2 => TextStylePack(_colorsTheme,
      _baseTextStyle.copyWith(fontSize: 60, fontWeight: FontWeight.w300));

  TextStylePack get h3 =>
      TextStylePack(_colorsTheme, _baseTextStyle.copyWith(fontSize: 48));

  TextStylePack get h4 =>
      TextStylePack(_colorsTheme, _baseTextStyle.copyWith(fontSize: 34));

  TextStylePack get h5 =>
      TextStylePack(_colorsTheme, _baseTextStyle.copyWith(fontSize: 12));

  TextStylePack get h6 => TextStylePack(_colorsTheme,
      _baseTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w500));

  TextStylePack get h7 => TextStylePack(_colorsTheme,
      _baseTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w500));

  /// FontSize: 12
  @Deprecated('Use caption1 - h7 styles')
  TextStylePack get small =>
      TextStylePack(_colorsTheme, _baseTextStyle.copyWith(fontSize: 12));

  /// FontSize: 14
  @Deprecated('Use caption1 - h7 styles')
  TextStylePack get middle =>
      TextStylePack(_colorsTheme, _baseTextStyle.copyWith(fontSize: 14));

  /// FontSize: 16
  @Deprecated('Use caption1 - h7 styles')
  TextStylePack get big =>
      TextStylePack(_colorsTheme, _baseTextStyle.copyWith(fontSize: 16));

  /// FontSize: 24
  @Deprecated('Use caption1 - h7 styles')
  TextStylePack get veryBig =>
      TextStylePack(_colorsTheme, _baseTextStyle.copyWith(fontSize: 24));

  /// FontSize: 30
  @Deprecated('Use caption1 - h7 styles')
  TextStylePack get extraBig =>
      TextStylePack(_colorsTheme, _baseTextStyle.copyWith(fontSize: 30));
}

class TextStylePack {
  TextStylePack(this.colorsTheme, this._primary);

  final ColorsTheme colorsTheme;
  final TextStyle _primary;

  TextStyle call() => _primary;

  DecoratableTextStyle get primary => DecoratableTextStyle(_primary);

  DecoratableTextStyle get secondary =>
      DecoratableTextStyle(_primary.copyWith(color: colorsTheme.textSecondary));

  DecoratableTextStyle get label =>
      DecoratableTextStyle(_primary.copyWith(color: colorsTheme.textLabel));

  DecoratableTextStyle get alert =>
      DecoratableTextStyle(_primary.copyWith(color: colorsTheme.textError));

  DecoratableTextStyle get error =>
      DecoratableTextStyle(_primary.copyWith(color: colorsTheme.textError));

  DecoratableTextStyle get mxc =>
      DecoratableTextStyle(_primary.copyWith(color: colorsTheme.mxcBlue));

  DecoratableTextStyle get dhx =>
      DecoratableTextStyle(_primary.copyWith(color: colorsTheme.dhxBlue));

  DecoratableTextStyle get btc =>
      DecoratableTextStyle(_primary.copyWith(color: colorsTheme.btcYellow));

  DecoratableTextStyle get button => DecoratableTextStyle(
        _primary.copyWith(color: colorsTheme.buttonIconTextColor),
      );

  DecoratableTextStyle get buttonDisabled => DecoratableTextStyle(
        _primary.copyWith(color: colorsTheme.buttonDisabledLabel),
      );

  DecoratableTextStyle get health => DecoratableTextStyle(
        _primary.copyWith(color: colorsTheme.minerHealthRed),
      );

  DecoratableTextStyle get transparent =>
      DecoratableTextStyle(_primary.copyWith(color: colorsTheme.transparent));
}

class DecoratableTextStyle {
  DecoratableTextStyle(this._inner);

  final TextStyle _inner;

  TextStyle call() => _inner;

  DecoratableTextStyle get underline => DecoratableTextStyle(
        _inner.copyWith(
          decoration: TextDecoration.underline,
        ),
      );

  @Deprecated('Use caption1 - h7 styles instead')
  DecoratableTextStyle get semibold =>
      DecoratableTextStyle(_inner.copyWith(fontWeight: FontWeight.w500));

  @Deprecated('Use caption1 - h7 styles instead')
  DecoratableTextStyle get bold =>
      DecoratableTextStyle(_inner.copyWith(fontWeight: FontWeight.w600));
}
