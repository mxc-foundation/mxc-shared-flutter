import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcOutlinedButton extends StatefulWidget {
  final String title;
  final Color? color;
  final VoidCallback? onTap;

  /// MXC Outlined button
  /// [key] marked as required, because it's often needed for testing purposes
  const MxcOutlinedButton({
    required Key? key,
    required this.title,
    required this.onTap,
    this.color,
  }) : super(key: key);

  @override
  _MxcOutlinedButtonState createState() => _MxcOutlinedButtonState();
}

class _MxcOutlinedButtonState extends State<MxcOutlinedButton> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    var primaryColor = ColorsTheme.of(context).buttonIconTextColor;

    if (widget.onTap == null) {
      primaryColor = ColorsTheme.of(context).textLabel;
    }

    return MouseRegion(
      cursor:
          widget.onTap == null ? MouseCursor.defer : SystemMouseCursors.click,
      onEnter: (e) {
        if (!hovering) {
          setState(() => hovering = true);
        }
      },
      onExit: (e) {
        if (hovering) {
          setState(() => hovering = false);
        }
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 2, color: primaryColor),
            color: Colors.transparent,
            boxShadow: [
              if (hovering && widget.onTap != null)
                MxcBoxShadow(
                  color: ColorsTheme.of(context).shadow,
                ),
            ],
          ),
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
