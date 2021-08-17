import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcCheckbox extends StatelessWidget {
  final void Function(bool?)? onChanged;
  final bool? value;
  final bool tristate;

  const MxcCheckbox({
    required Key? key,
    required this.onChanged,
    required this.value,
    this.tristate = false,
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
      child: Checkbox(
        onChanged: onChanged,
        value: value,
        activeColor: primaryColor,
        tristate: tristate,
      ),
    );
  }
}
