import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

abstract class MxcCircleButton extends StatelessWidget {
  final bool filled;
  final VoidCallback? onTap;
  final String? title;
  final Color? color;
  final TextStyle? titleStyle;

  const factory MxcCircleButton({
    required Key? key,
    required Widget child,
    required VoidCallback? onTap,
    bool filled,
    String? title,
  }) = _MxcCircleChildButton;

  const MxcCircleButton._({
    required Key? key,
    required this.onTap,
    this.filled = false,
    this.title,
    this.color,
    this.titleStyle,
  }) : super(key: key);

  const factory MxcCircleButton.image({
    required Key? key,
    required ImageProvider image,
    required VoidCallback? onTap,
    bool filled,
    String? title,
    Color? color,
  }) = _MxcCircleImageButton;

  const factory MxcCircleButton.icon({
    required Key? key,
    required IconData icon,
    required VoidCallback? onTap,
    bool filled,
    String? title,
    Color? color,
    TextStyle? titleStyle,
  }) = _MxcCircleIconButton;

  Color _contentColor(BuildContext context) {
    Color color;
    if (onTap == null) {
      color = ColorsTheme.of(context).textLabel;
    } else if (filled) {
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
    if (onTap == null) {
      fillColor = ColorsTheme.of(context).primaryBackground;
    } else if (filled) {
      fillColor = color ?? MxcScopedTheme.of(context).primaryColor;
    } else {
      fillColor = ColorsTheme.of(context).boxComponents;
    }
    Widget widget = Material(
      color: fillColor,
      shape: const CircleBorder(),
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              MxcBoxShadow(
                color: ColorsTheme.of(context).shadow2,
              ),
            ],
          ),
          width: 52,
          height: 52,
          child: buildChild(context),
        ),
      ),
    );

    if (title != null) {
      widget = Column(
        children: [
          widget,
          const SizedBox(height: 6),
          Text(
            title!,
            textAlign: TextAlign.center,
            style: titleStyle ?? FontTheme.of(context).middle(),
          ),
        ],
      );
    }

    return widget;
  }
}

class _MxcCircleChildButton extends MxcCircleButton {
  final Widget child;

  const _MxcCircleChildButton({
    required Key? key,
    required this.child,
    required VoidCallback? onTap,
    bool filled = false,
    String? title,
  }) : super._(
          key: key,
          filled: filled,
          onTap: onTap,
          title: title,
          color: null,
        );

  @override
  Widget buildChild(BuildContext context) => child;
}

class _MxcCircleImageButton extends MxcCircleButton {
  final ImageProvider image;

  const _MxcCircleImageButton({
    required Key? key,
    required this.image,
    required VoidCallback? onTap,
    bool filled = false,
    String? title,
    Color? color,
  }) : super._(
          key: key,
          filled: filled,
          onTap: onTap,
          title: title,
          color: color,
        );

  @override
  Widget buildChild(BuildContext context) => Image(
        image: image,
        color: _contentColor(context),
      );
}

class _MxcCircleIconButton extends MxcCircleButton {
  final IconData icon;

  const _MxcCircleIconButton({
    required Key? key,
    required this.icon,
    required VoidCallback? onTap,
    bool filled = false,
    String? title,
    Color? color,
    TextStyle? titleStyle,
  }) : super._(
          key: key,
          filled: filled,
          onTap: onTap,
          title: title,
          color: color,
          titleStyle: titleStyle,
        );

  @override
  Widget buildChild(BuildContext context) => Icon(
        icon,
        color: _contentColor(context),
      );
}
