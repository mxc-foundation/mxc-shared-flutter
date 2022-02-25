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
  final minerHealthRed5 = const Color(0xFFFF5B5B).withOpacity(0.05);

  final btcYellow = const Color(0xFFF7931A);
  final btcYellow80 = const Color(0xFFF7931A).withOpacity(0.80);
  final btcYellow60 = const Color(0xFFF7931A).withOpacity(0.60);
  final btcYellow40 = const Color(0xFFF7931A).withOpacity(0.40);
  final btcYellow20 = const Color(0xFFF7931A).withOpacity(0.20);

  final success = const Color(0xFF10C469);
  final success20 = const Color(0xFF10C469).withOpacity(0.2);
  final success40 = const Color(0xFF10C469).withOpacity(0.4);

  final textPrimaryAndIcons = Colors.black.withOpacity(0.87);
  final textSecondary = const Color(0xFF98A6AD);
  final textLabel = const Color(0xFF98A6AD);
  final textError = const Color(0xFFFF5B5B);
  final textError20 = const Color(0xFFFF5B5B).withOpacity(0.2);

  final buttonIconTextColor = Colors.white;
  final buttonDisabledBackground = const Color(0xFFEBEFF2);
  final buttonDisabledLabel = const Color(0xFF98A6AD);
  final transparent = Colors.transparent;

  Color get shadow => mxcBlue20;
  Color get shadow2 => Colors.black.withOpacity(0.107);
}

class ColorsThemeDark implements ColorsTheme {
  ColorsThemeDark._();

  // background
  @override
  final primaryBackground = const Color(0xFF111111);

  @override
  final secondaryBackground = const Color(0xFF1C1C1E);

  // components
  @override
  final boxComponents = const Color(0xFF2C2C2E);

  @override
  final mxcBlue = const Color(0xFF30A78B);

  @override
  final mxcBlue80 = const Color(0xFF30A78B).withOpacity(0.8);

  @override
  final mxcBlue60 = const Color(0xFF30A78B).withOpacity(0.6);

  @override
  final mxcBlue40 = const Color(0xFF30A78B).withOpacity(0.4);

  @override
  final mxcBlue20 = const Color(0xFF30A78B).withOpacity(0.2);

  @override
  final mxcBlue05 = const Color(0xFF30A78B).withOpacity(0.05);

  @override
  final dhxBlue = const Color(0xFF7B90E9);

  @override
  final dhxBlue80 = const Color(0xFF7B90E9).withOpacity(0.8);

  @override
  final dhxBlue60 = const Color(0xFF7B90E9).withOpacity(0.6);

  @override
  final dhxBlue40 = const Color(0xFF7B90E9).withOpacity(0.4);

  @override
  final dhxBlue20 = const Color(0xFF7B90E9).withOpacity(0.2);

  @override
  final dhxPurple = const Color(0xFFD164FF);

  @override
  final dhxPurple80 = const Color(0xFFD164FF).withOpacity(0.80);

  @override
  final dhxPurple60 = const Color(0xFFD164FF).withOpacity(0.60);

  @override
  final dhxPurple40 = const Color(0xFFD164FF).withOpacity(0.40);

  @override
  final dhxPurple20 = const Color(0xFFD164FF).withOpacity(0.20);

  @override
  final minerHealthRed = const Color(0xFFFF7878);

  @override
  final minerHealthRed80 = const Color(0xFFFF7878).withOpacity(0.8);

  @override
  final minerHealthRed20 = const Color(0xFFFF7878).withOpacity(0.2);

  @override
  final minerHealthRed5 = const Color(0xFFFF7878).withOpacity(0.05);

  @override
  final btcYellow = const Color(0xFFB1742A);

  @override
  final btcYellow80 = const Color(0xFFB1742A).withOpacity(0.80);

  @override
  final btcYellow60 = const Color(0xFFB1742A).withOpacity(0.60);

  @override
  final btcYellow40 = const Color(0xFFB1742A).withOpacity(0.40);

  @override
  final btcYellow20 = const Color(0xFFB1742A).withOpacity(0.20);

  @override
  final success = const Color(0xFF30A78B);

  @override
  final success20 = const Color(0xFF30A78B).withOpacity(0.2);

  @override
  final success40 = const Color(0xFF30A78B).withOpacity(0.4);

  @override
  final textPrimaryAndIcons = Colors.white;

  @override
  final textSecondary = const Color(0xFFEBEFF2);

  @override
  final textLabel = const Color(0xFF98A6AD);

  @override
  final textError = const Color(0xFFFF5B5B);

  @override
  final textError20 = const Color(0xFFFF5B5B).withOpacity(0.2);

  @override
  final buttonIconTextColor = Colors.white;

  @override
  final buttonDisabledBackground = const Color(0xFF323233);

  @override
  final buttonDisabledLabel = const Color(0xFF4E5659);

  @override
  final transparent = Colors.transparent;

  @override
  Color get shadow => mxcBlue20;

  @override
  Color get shadow2 => Colors.black.withOpacity(0.107);
}
