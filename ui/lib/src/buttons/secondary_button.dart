import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcSecondaryButton extends StatefulWidget {
  /// MXC Secondary button
  /// [key] marked as required, because it's often needed for testing purposes
  const MxcSecondaryButton({
    required Key? key,
    required this.title,
    required this.onTap,
    this.color,
  }) : super(key: key);
  final String title;
  final Color? color;
  final VoidCallback? onTap;

  @override
  _MxcSecondaryButtonState createState() => _MxcSecondaryButtonState();
}

class _MxcSecondaryButtonState extends State<MxcSecondaryButton> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    final primaryColor =
        widget.color ?? MxcScopedTheme.of(context).primaryColor;

    final textColor = primaryColor;
    var buttonColor = primaryColor.withOpacity(0.2);

    if (widget.onTap == null) {
      buttonColor = ColorsTheme.of(context).primaryBackground;
    } else if (hovering) {
      buttonColor = buttonColor.withOpacity(0.4);
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
                ? FontTheme.of(context).body2().copyWith(color: textColor)
                : FontTheme.of(context).body2.label(),
          ),
        ),
      ),
    );
  }
}
