import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';
import 'package:mxc_ui/src/theme/scoped.dart';

class MxcPrimaryButton extends StatefulWidget {
  final String title;
  final Color? color;
  final VoidCallback? onTap;

  /// MXC Primary button
  /// [key] marked as required, because it's often needed for testing purposes
  const MxcPrimaryButton({
    required Key? key,
    required this.title,
    required this.onTap,
    this.color,
  }) : super(key: key);

  @override
  _MxcPrimaryButtonState createState() => _MxcPrimaryButtonState();
}

class _MxcPrimaryButtonState extends State<MxcPrimaryButton> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    final primaryColor =
        widget.color ?? MxcScopedTheme.of(context).primaryColor;

    var buttonColor = primaryColor;

    if (widget.onTap == null) {
      buttonColor = ColorsTheme.of(context).boxComponents;
    } else if (hovering) {
      buttonColor = buttonColor.withOpacity(0.8);
    }

    return Material(
      color: buttonColor,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: widget.onTap,
        onHover: (hovering) {
          if (hovering != this.hovering) {
            setState(() => this.hovering = hovering);
          }
        },
        child: Container(
          height: 48,
          alignment: Alignment.center,
          child: Text(
            widget.title,
            style: widget.onTap != null
                ? FontTheme.of(context).big.button()
                : FontTheme.of(context).big.label(),
          ),
        ),
      ),
    );
  }
}
