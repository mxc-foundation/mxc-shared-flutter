import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';
import 'package:provider/provider.dart';

class MxcScopedThemeData {
  final Color primaryColor;

  MxcScopedThemeData({required this.primaryColor});
}

class MxcScopedTheme extends StatelessWidget {
  final MxcScopedThemeData data;
  final Widget child;

  // Use MxcScopedTheme when you want to set theme defaults on some scope.
  // E.g. set default color to btcYellow instead of mxcBlue for btc page.
  const MxcScopedTheme({
    Key? key,
    required this.data,
    required this.child,
  }) : super(key: key);

  static MxcScopedThemeData of(BuildContext context, {bool listen = true}) {
    try {
      return Provider.of<MxcScopedThemeData>(context, listen: listen);
    } on ProviderNotFoundException {
      return MxcScopedThemeData(
        primaryColor: ColorsTheme.of(context, listen: listen).mxcBlue,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: data,
      child: Theme(
        data: ThemeData(
          primaryColor: data.primaryColor,
          primaryColorDark: data.primaryColor,
        ),
        child: child,
      ),
    );
  }
}
