import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mxc_ui/mxc_ui.dart';

abstract class MxcCircleButton extends StatelessWidget {
  const factory MxcCircleButton({
    required Key? key,
    required Widget child,
    required VoidCallback? onTap,
    bool filled,
    String? title,
    double size,
  }) = _MxcCircleChildButton;

  const MxcCircleButton._({
    required Key? key,
    required this.onTap,
    this.filled = false,
    this.title,
    this.color,
    this.titleStyle,
    this.size = 52,
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

  const factory MxcCircleButton.svg({
    required Key? key,
    required String svgString,
    required VoidCallback? onTap,
    bool filled,
    String? title,
    Color? color,
    TextStyle? titleStyle,
  }) = _MxcCircleSvgButton;

  final bool filled;
  final VoidCallback? onTap;
  final String? title;
  final Color? color;
  final TextStyle? titleStyle;
  final double size;

  Color _contentColor(BuildContext context) {
    Color color;
    if (onTap == null) {
      color = ColorsTheme.of(context).buttonDisabledLabel;
    } else if (filled) {
      color = ColorsTheme.of(context).white;
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
      fillColor = ColorsTheme.of(context).buttonDisabledBackground;
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
              if (onTap != null)
                MxcBoxShadow(
                  color: ColorsTheme.of(context).shadow2,
                ),
            ],
          ),
          width: size,
          height: size,
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
            style: titleStyle ?? FontTheme.of(context).caption1(),
          ),
        ],
      );
    }

    return widget;
  }
}

class _MxcCircleChildButton extends MxcCircleButton {
  const _MxcCircleChildButton({
    required Key? key,
    required this.child,
    required VoidCallback? onTap,
    bool filled = false,
    String? title,
    double size = 52,
  }) : super._(
          key: key,
          filled: filled,
          onTap: onTap,
          title: title,
          color: null,
          size: size,
        );

  final Widget child;

  @override
  Widget buildChild(BuildContext context) => child;
}

class _MxcCircleImageButton extends MxcCircleButton {
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

  final ImageProvider image;

  @override
  Widget buildChild(BuildContext context) => Image(
        image: image,
        color: _contentColor(context),
      );
}

class _MxcCircleIconButton extends MxcCircleButton {
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

  final IconData icon;

  @override
  Widget buildChild(BuildContext context) => Icon(
        icon,
        color: _contentColor(context),
      );
}

class _MxcCircleSvgButton extends MxcCircleButton {
  const _MxcCircleSvgButton({
    required Key? key,
    required this.svgString,
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

  final String svgString;

  @override
  Widget buildChild(BuildContext context) => SvgPicture.asset(
        svgString,
        height: 24,
        width: 24,
        color: _contentColor(context),
      );
}
