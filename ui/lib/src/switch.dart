import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcSwitch extends StatelessWidget {
  final void Function(bool)? onChanged;
  final bool value;

  const MxcSwitch({
    required Key? key,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: onChanged,
      value: value,
      thumbColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return ColorsTheme.of(context).textLabel;
        }
        if (states.contains(MaterialState.selected)) {
          return MxcScopedTheme.of(context).primaryColor;
        }
        return MxcScopedTheme.of(context).primaryColor.withOpacity(0.6);
      }),
      trackColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return ColorsTheme.of(context).textLabel.withOpacity(0.5);
        }
        if (states.contains(MaterialState.selected)) {
          return MxcScopedTheme.of(context).primaryColor.withOpacity(0.5);
        }
        return MxcScopedTheme.of(context).primaryColor.withOpacity(0.2);
      }),
    );
  }
}
