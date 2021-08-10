import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

abstract class MxcCircleButton extends StatelessWidget {
  //final Widget child;
  final bool filled;
  final VoidCallback? onTap;

  MxcCircleButton._({
    required Key? key,
    required this.onTap,
    this.filled = false,
  });

  factory MxcCircleButton({
    required Key? key,
    required Widget child,
    required VoidCallback? onTap,
    bool filled,
  }) = _MxcCircleChildButton;

  factory MxcCircleButton.image({
    required Key? key,
    required ImageProvider image,
    required VoidCallback? onTap,
    bool filled,
  }) = _MxcCircleImageButton;

  factory MxcCircleButton.icon({
    required Key? key,
    required IconData icon,
    required VoidCallback? onTap,
    bool filled,
  }) = _MxcCircleIconButton;

  Color _contentColor(BuildContext context) {
    Color color;
    if (onTap == null) {
      color = ColorsTheme.of(context).textLabel;
    } else if (filled) {
      color = ColorsTheme.of(context).buttonIconTextColor;
    } else {
      color = MxcScopedTheme.of(context).primaryColor;
    }
    return color;
  }

  Widget buildChild(BuildContext context);

  @override
  Widget build(BuildContext context) {
    Color fillColor;
    if (onTap == null) {
      fillColor = ColorsTheme.of(context).primaryBackground;
    } else if (filled) {
      fillColor = MxcScopedTheme.of(context).primaryColor;
    } else {
      fillColor = ColorsTheme.of(context).boxComponents;
    }
    return Material(
      color: fillColor,
      shape: CircleBorder(),
      child: InkWell(
        onTap: () {},
        customBorder: CircleBorder(),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          width: 52,
          height: 52,
          child: buildChild(context),
        ),
      ),
    );
  }
}

class _MxcCircleChildButton extends MxcCircleButton {
  final Widget child;

  _MxcCircleChildButton({
    required Key? key,
    required this.child,
    required VoidCallback? onTap,
    bool filled = false,
  }) : super._(key: key, filled: filled, onTap: onTap);

  @override
  Widget buildChild(BuildContext context) => child;
}

class _MxcCircleImageButton extends MxcCircleButton {
  final ImageProvider image;

  _MxcCircleImageButton({
    required Key? key,
    required this.image,
    required VoidCallback? onTap,
    bool filled = false,
  }) : super._(key: key, filled: filled, onTap: onTap);

  @override
  Widget buildChild(BuildContext context) => Image(
        image: image,
        color: _contentColor(context),
      );
}

class _MxcCircleIconButton extends MxcCircleButton {
  final IconData icon;

  _MxcCircleIconButton({
    required Key? key,
    required this.icon,
    required VoidCallback? onTap,
    bool filled = false,
  }) : super._(key: key, filled: filled, onTap: onTap);

  @override
  Widget buildChild(BuildContext context) => Icon(
        icon,
        color: _contentColor(context),
      );
}
