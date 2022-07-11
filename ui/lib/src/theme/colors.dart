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

  final purpleMain = const Color(0xFF461AB2);
  final purple600 = const Color(0xFF2A0F69);
  final purple500 = const Color(0xFF6A47C0);
  final purple400 = const Color(0xFF8F75D0);
  final purple300 = const Color(0xFFB3A1DE);
  final purple200 = const Color(0xFFD8CFEE);
  final purple100 = const Color(0xFFF2F0F8);

  final mxcPurple = const Color(0xFF6300FF);
  final mxcPurple500 = const Color(0xFF8132FE);
  final mxcPurple400 = const Color(0xFFA065FE);
  final mxcPurple300 = const Color(0xFFBF97FD);
  final mxcPurple200 = const Color(0xFFDECAFD);
  final mxcPurple100 = const Color(0xFFF4EFFC);

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

  final textPrimaryAndIcons = const Color(0xFF25282B);
  final textSecondary = const Color(0xFF98A6AD);
  final textLabel = const Color(0xFF98A6AD);
  final textError = const Color(0xFFD22D2D);

  final white = Colors.white;
  final buttonDisabledBackground = const Color(0xFFE3E3E5);
  final buttonDisabledLabel = const Color(0xFFBBBFC6);

  final sliderDisabledKnob = const Color(0xFFBBBFC6);
  final sliderDisabledBaseActive = const Color(0xFFBBBFC6);
  final sliderDisabledBaseDefault = const Color(0xFFE3E3E5);

  Color get shadow => purple200;
  Color get shadow2 => Colors.black.withOpacity(0.107);

  Color get dialogOverlay => const Color(0xFF000000).withOpacity(0.35);

  Color get bottomFlowDialogBackgroundColor => primaryBackground;
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
  final purpleMain = const Color(0xFFA885E0);

  @override
  final purple600 = const Color(0xFFA885E0);

  @override
  final purple500 = const Color(0xFF967BC3);

  @override
  final purple400 = const Color(0xFF78639A);

  @override
  final purple300 = const Color(0xFF594C70);

  @override
  final purple200 = const Color(0xFF3B3447);

  @override
  final purple100 = const Color(0xFF34313C);

  @override
  final mxcPurple = const Color(0xFFB593EC);

  @override
  final mxcPurple500 = const Color(0xFF967BC3);

  @override
  final mxcPurple400 = const Color(0xFF78639A);

  @override
  final mxcPurple300 = const Color(0xFF594C70);

  @override
  final mxcPurple200 = const Color(0xFF3B3447);

  @override
  final mxcPurple100 = const Color(0xFF242228);

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
  final textError = const Color(0xFFFC8383);

  @override
  final white = Colors.white;

  @override
  final buttonDisabledBackground = const Color(0xFF323233);

  @override
  final buttonDisabledLabel = const Color(0xFF484A4D);

  @override
  Color get shadow => purple200;

  @override
  final sliderDisabledKnob = const Color(0xFF484A4D);

  @override
  final sliderDisabledBaseActive = const Color(0xFF484A4D);

  @override
  final sliderDisabledBaseDefault = const Color(0xFF323233);

  @override
  final transparent = Colors.transparent;

  @override
  Color get shadow2 => Colors.black.withOpacity(0.107);

  @override
  Color get dialogOverlay => const Color(0xFF000000).withOpacity(0.35);

  @override
  Color get bottomFlowDialogBackgroundColor => primaryBackground;
}
