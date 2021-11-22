import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'colors.dart';

class FontTheme {
  FontTheme(this._colorsTheme);

  final ColorsTheme _colorsTheme;

  static FontTheme of(BuildContext context, {bool listen = true}) {
    return Provider.of<FontTheme>(context, listen: listen);
  }

  /// FontSize: 12
  TextStylePack get small => TextStylePack(
        _colorsTheme,
        TextStyle(
          color: _colorsTheme.textPrimaryAndIcons,
          fontFamily: 'Roboto',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          height: 1.33333,
          decoration: TextDecoration.none,
        ),
      );

  /// FontSize: 14
  TextStylePack get middle => TextStylePack(
        _colorsTheme,
        TextStyle(
          color: _colorsTheme.textPrimaryAndIcons,
          fontFamily: 'Roboto',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.33333,
          decoration: TextDecoration.none,
        ),
      );

  /// FontSize: 16
  TextStylePack get big => TextStylePack(
        _colorsTheme,
        TextStyle(
          color: _colorsTheme.textPrimaryAndIcons,
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 1.33333,
          decoration: TextDecoration.none,
        ),
      );

  /// FontSize: 24
  TextStylePack get veryBig => TextStylePack(
        _colorsTheme,
        TextStyle(
          color: _colorsTheme.textPrimaryAndIcons,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          fontSize: 24,
          height: 1.33333,
          decoration: TextDecoration.none,
        ),
      );

  /// FontSize: 30
  TextStylePack get extraBig => TextStylePack(
        _colorsTheme,
        TextStyle(
          color: _colorsTheme.textPrimaryAndIcons,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          fontSize: 30,
          height: 1.33333,
          decoration: TextDecoration.none,
        ),
      );
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

  DecoratableTextStyle get semibold =>
      DecoratableTextStyle(_inner.copyWith(fontWeight: FontWeight.w500));

  DecoratableTextStyle get bold =>
      DecoratableTextStyle(_inner.copyWith(fontWeight: FontWeight.w600));
}
