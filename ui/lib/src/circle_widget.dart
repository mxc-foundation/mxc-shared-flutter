import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

abstract class MxcCircleWidget extends StatelessWidget {
  final bool filled;
  final Color? color;

  const factory MxcCircleWidget({
    Key? key,
    required Widget child,
    bool filled,
  }) = _MxcCircleChildWidget;

  const MxcCircleWidget._({
    Key? key,
    this.filled = false,
    this.color,
  }) : super(key: key);

  const factory MxcCircleWidget.image({
    Key? key,
    required ImageProvider image,
    bool filled,
    Color? color,
    bool useColor,
  }) = _MxcCircleImageWidget;

  const factory MxcCircleWidget.icon({
    Key? key,
    required IconData icon,
    bool filled,
    Color? color,
  }) = _MxcCircleIconWidget;

  Color _contentColor(BuildContext context) {
    Color color;
    if (filled) {
      color = ColorsTheme.of(context).buttonIconTextColor;
    } else {
      color = this.color ?? MxcScopedTheme.of(context).primaryColor;
    }
    return color;
  }

  Widget buildChild(BuildContext context);

  @override
  Widget build(BuildContext context) {
    Color fillColor;
    if (filled) {
      fillColor = color ?? MxcScopedTheme.of(context).primaryColor;
    } else {
      fillColor = ColorsTheme.of(context).boxComponents;
    }
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: fillColor,
      ),
      width: 44,
      height: 44,
      child: buildChild(context),
    );
  }
}

class _MxcCircleChildWidget extends MxcCircleWidget {
  final Widget child;

  const _MxcCircleChildWidget({
    Key? key,
    required this.child,
    bool filled = false,
  }) : super._(
          key: key,
          filled: filled,
          color: null,
        );

  @override
  Widget buildChild(BuildContext context) => child;
}

class _MxcCircleImageWidget extends MxcCircleWidget {
  final ImageProvider image;
  final bool useColor;

  const _MxcCircleImageWidget({
    Key? key,
    required this.image,
    bool filled = false,
    Color? color,
    this.useColor = true,
  }) : super._(
          key: key,
          filled: filled,
          color: color,
        );

  @override
  Widget buildChild(BuildContext context) => Image(
        image: image,
        color: useColor ? _contentColor(context) : null,
      );
}

class _MxcCircleIconWidget extends MxcCircleWidget {
  final IconData icon;

  const _MxcCircleIconWidget({
    Key? key,
    required this.icon,
    bool filled = false,
    Color? color,
  }) : super._(
          key: key,
          filled: filled,
          color: color,
        );

  @override
  Widget buildChild(BuildContext context) => Icon(
        icon,
        color: _contentColor(context),
      );
}
