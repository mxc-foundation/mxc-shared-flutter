import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'colors.dart';

class FontTheme {
  final ColorsTheme _colorsTheme;

  FontTheme(this._colorsTheme);

  static FontTheme of(BuildContext context, {bool listen = true}) {
    return Provider.of<FontTheme>(context, listen: listen);
  }

  /// FontSize: 12
  TextStylePack get small => TextStylePack(
        _colorsTheme,
        TextStyle(
          color: _colorsTheme.textPrimaryAndIcons,
          fontFamily: "Roboto",
          fontSize: 12,
          height: 1.33333,
          decoration: TextDecoration.none,
          letterSpacing: 0,
          fontFamilyFallback: const [
            "OpenSansEmoji",
          ],
        ),
      );

  /// FontSize: 14
  TextStylePack get middle => TextStylePack(
        _colorsTheme,
        TextStyle(
          color: _colorsTheme.textPrimaryAndIcons,
          fontFamily: "Roboto",
          fontSize: 14,
          height: 1.33333,
          decoration: TextDecoration.none,
          letterSpacing: 0,
          fontFamilyFallback: const [
            "OpenSansEmoji",
          ],
        ),
      );

  /// FontSize: 16
  TextStylePack get big => TextStylePack(
        _colorsTheme,
        TextStyle(
          color: _colorsTheme.textPrimaryAndIcons,
          fontFamily: "Roboto",
          fontSize: 16,
          height: 1.33333,
          decoration: TextDecoration.none,
          letterSpacing: 0,
          fontFamilyFallback: const [
            "OpenSansEmoji",
          ],
        ),
      );

  /// FontSize: 20
  TextStylePack get xbig => TextStylePack(
        _colorsTheme,
        TextStyle(
          color: _colorsTheme.textPrimaryAndIcons,
          fontFamily: "Roboto",
          fontSize: 20,
          height: 1.33333,
          decoration: TextDecoration.none,
          letterSpacing: 0,
          fontFamilyFallback: const [
            "OpenSansEmoji",
          ],
        ),
      );

  /// FontSize: 24
  TextStylePack get veryBig => TextStylePack(
        _colorsTheme,
        TextStyle(
          color: _colorsTheme.textPrimaryAndIcons,
          fontFamily: "Roboto",
          fontSize: 24,
          height: 1.33333,
          decoration: TextDecoration.none,
        ),
      );
}

class TextStylePack {
  final ColorsTheme colorsTheme;
  final TextStyle _primary;

  TextStylePack(this.colorsTheme, this._primary);

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
  final TextStyle _inner;

  DecoratableTextStyle(this._inner);

  TextStyle call() => _inner;

  DecoratableTextStyle get underline => DecoratableTextStyle(
        _inner.copyWith(
          decoration: TextDecoration.underline,
        ),
      );

  DecoratableTextStyle get bold =>
      DecoratableTextStyle(_inner.copyWith(fontWeight: FontWeight.w600));
}
