import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcCheckbox extends StatelessWidget {
  const MxcCheckbox({
    required Key? key,
    required this.onChanged,
    required this.value,
    this.tristate = false,
    this.title,
  }) : super(key: key);

  final void Function(bool?)? onChanged;
  final bool? value;
  final bool tristate;
  final Widget? title;

  Widget _checkbox(Color primaryColor) => Checkbox(
        onChanged: onChanged,
        value: value,
        activeColor: primaryColor,
        tristate: tristate,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      );

  @override
  Widget build(BuildContext context) {
    final primaryColor = onChanged == null
        ? ColorsTheme.of(context).textLabel
        : MxcScopedTheme.of(context).primaryColor;
    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: primaryColor,
      ),
      child: title == null
          ? _checkbox(primaryColor)
          : Row(
              children: [
                Expanded(
                  child: title!,
                ),
                _checkbox(primaryColor),
              ],
            ),
    );
  }
}
