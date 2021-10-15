import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcRadio extends StatelessWidget {
  final void Function(int?)? onChanged;
  final int value;
  final int groupValue;

  const MxcRadio({
    Key? key,
    required this.onChanged,
    required this.value,
    required this.groupValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = onChanged == null
        ? ColorsTheme.of(context).textLabel
        : MxcScopedTheme.of(context).primaryColor;

    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: primaryColor,
      ),
      child: Radio(
        key: key,
        onChanged: onChanged,
        value: value,
        groupValue: groupValue,
        activeColor: primaryColor,
      ),
    );
  }
}
