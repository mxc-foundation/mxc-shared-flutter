import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';
import 'package:mxc_ui/src/theme/scoped.dart';

class MxcCapsuleButton extends StatefulWidget {
  final String title;
  final Color? color;
  final Color? textColor;
  final IconData? icon;
  final VoidCallback? onTap;

  /// MXC Capsule button
  /// [key] marked as required, because it's often needed for testing purposes
  const MxcCapsuleButton({
    required Key? key,
    required this.title,
    required this.onTap,
    this.icon,
    this.color,
    this.textColor
  }) : super(key: key);

  @override
  _MxcCapsuleButtonState createState() => _MxcCapsuleButtonState();
}

class _MxcCapsuleButtonState extends State<MxcCapsuleButton> {
  bool hovering = false;
  IconData? get _icon => widget.icon;
  Color? get _textColor => widget.textColor;

  @override
  Widget build(BuildContext context) {
    final primaryColor =
        widget.color ?? MxcScopedTheme.of(context).primaryColor;

    final textColor = _textColor ?? MxcScopedTheme.of(context).primaryColor;
    var buttonColor = primaryColor.withOpacity(0.2);

    if (widget.onTap == null) {
      buttonColor = ColorsTheme.of(context).primaryBackground;
    } else if (hovering) {
      buttonColor = buttonColor.withOpacity(0.4);
    }

    return Material(
      color: widget.color ?? buttonColor,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        onTap: widget.onTap,
        onHover: (hovering) {
          if (hovering != this.hovering) {
            setState(() => this.hovering = hovering);
          }
        },
        child: Container(
          height: 28,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.center,
          child: Row(
            children: [
              if(_icon != null)
                Row(
                  children: [
                    Icon(_icon, size: 12),
                    const SizedBox(width: 10,)
                  ]
                ),
              Text(
                widget.title,
                style: widget.onTap != null
                    ? FontTheme.of(context).small().copyWith(color: textColor)
                    : FontTheme.of(context).small.label(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
