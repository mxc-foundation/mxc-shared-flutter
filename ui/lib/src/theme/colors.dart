import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme.dart';

class ColorsTheme {
  ColorsTheme._();

  factory ColorsTheme.fromOption(MxcThemeOption option) {
    switch (option) {
      case MxcThemeOption.day:
        return ColorsTheme._();
      case MxcThemeOption.night:
        return ColorsThemeDark._();
    }
  }

  static ColorsTheme of(BuildContext context, {bool listen = true}) {
    return Provider.of<ColorsTheme>(context, listen: listen);
  }

  // background
  final primaryBackground = const Color(0xFFEBEFF2);
  final secondaryBackground = Colors.white;

  // components
  final boxComponents = Colors.white;

  final mxcBlue = const Color(0xFF1C1478);
  final mxcBlue80 = const Color(0xFF1C1478).withOpacity(0.80);
  final mxcBlue60 = const Color(0xFF1C1478).withOpacity(0.60);
  final mxcBlue40 = const Color(0xFF1C1478).withOpacity(0.40);
  final mxcBlue20 = const Color(0xFF1C1478).withOpacity(0.20);
  final mxcBlue05 = const Color(0xFF1C1478).withOpacity(0.05);

  final dhxBlue = const Color(0xFF4665EA);
  final dhxBlue80 = const Color(0xFF4665EA).withOpacity(0.80);
  final dhxBlue60 = const Color(0xFF4665EA).withOpacity(0.60);
  final dhxBlue40 = const Color(0xFF4665EA).withOpacity(0.40);
  final dhxBlue20 = const Color(0xFF4665EA).withOpacity(0.20);

  final dhxPurple = const Color(0xFF7D06AF);
  final dhxPurple80 = const Color(0xFF7D06AF).withOpacity(0.80);
  final dhxPurple60 = const Color(0xFF7D06AF).withOpacity(0.60);
  final dhxPurple40 = const Color(0xFF7D06AF).withOpacity(0.40);
  final dhxPurple20 = const Color(0xFF7D06AF).withOpacity(0.20);

  final minerHealthRed = const Color(0xFFFF5B5B);
  final minerHealthRed80 = const Color(0xFFFF5B5B).withOpacity(0.80);
  final minerHealthRed20 = const Color(0xFFFF5B5B).withOpacity(0.20);

  final btcYellow = const Color(0xFFF7931A);
  final btcYellow80 = const Color(0xFFF7931A).withOpacity(0.80);
  final btcYellow60 = const Color(0xFFF7931A).withOpacity(0.60);
  final btcYellow40 = const Color(0xFFF7931A).withOpacity(0.40);
  final btcYellow20 = const Color(0xFFF7931A).withOpacity(0.20);

  final success = const Color(0xFF10C469);
  final success20 = const Color(0xFF10C469).withOpacity(0.2);

  final textPrimaryAndIcons = Colors.black.withOpacity(0.87);
  final textSecondary = const Color(0xFF98A6AD);
  final textLabel = const Color(0xFF98A6AD);
  final textError = const Color(0xFFFF5B5B);

  final buttonIconTextColor = Colors.white;
  final transparent = Colors.transparent;

  Color get shadow => mxcBlue20;
  Color get shadow2 => Colors.black.withOpacity(10.7);
}

class ColorsThemeDark implements ColorsTheme {
  ColorsThemeDark._();

  // background
  final primaryBackground = const Color(0xFF111111);
  final secondaryBackground = const Color(0xFF1C1C1E);

  // components
  final boxComponents = const Color(0xFF2C2C2E);

  final mxcBlue = const Color(0xFF30A78B);
  final mxcBlue80 = const Color(0xFF30A78B).withOpacity(0.8);
  final mxcBlue60 = const Color(0xFF30A78B).withOpacity(0.6);
  final mxcBlue40 = const Color(0xFF30A78B).withOpacity(0.4);
  final mxcBlue20 = const Color(0xFF30A78B).withOpacity(0.2);
  final mxcBlue05 = const Color(0xFF30A78B).withOpacity(0.05);

  final dhxBlue = const Color(0xFF7B90E9);
  final dhxBlue80 = const Color(0xFF7B90E9).withOpacity(0.8);
  final dhxBlue60 = const Color(0xFF7B90E9).withOpacity(0.6);
  final dhxBlue40 = const Color(0xFF7B90E9).withOpacity(0.4);
  final dhxBlue20 = const Color(0xFF7B90E9).withOpacity(0.2);

  final dhxPurple = const Color(0xFFD164FF);
  final dhxPurple80 = const Color(0xFFD164FF).withOpacity(0.80);
  final dhxPurple60 = const Color(0xFFD164FF).withOpacity(0.60);
  final dhxPurple40 = const Color(0xFFD164FF).withOpacity(0.40);
  final dhxPurple20 = const Color(0xFFD164FF).withOpacity(0.20);

  final minerHealthRed = const Color(0xFFFF7878);
  final minerHealthRed80 = const Color(0xFFFF7878).withOpacity(0.8);
  final minerHealthRed20 = const Color(0xFFFF7878).withOpacity(0.2);

  final btcYellow = const Color(0xFFB1742A);
  final btcYellow80 = const Color(0xFFB1742A).withOpacity(0.80);
  final btcYellow60 = const Color(0xFFB1742A).withOpacity(0.60);
  final btcYellow40 = const Color(0xFFB1742A).withOpacity(0.40);
  final btcYellow20 = const Color(0xFFB1742A).withOpacity(0.20);

  final success = const Color(0xFF30A78B);
  final success20 = const Color(0xFF30A78B).withOpacity(0.2);

  final textPrimaryAndIcons = Colors.white;
  final textSecondary = const Color(0xFFEBEFF2);
  final textLabel = const Color(0xFF98A6AD);
  final textError = const Color(0xFFFF5B5B);

  final buttonIconTextColor = Colors.white;

  final transparent = Colors.transparent;

  Color get shadow => mxcBlue20;
  Color get shadow2 => Colors.black.withOpacity(10.7);
}
