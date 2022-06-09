import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcCard extends StatelessWidget {
  const MxcCard({
    Key? key,
    required this.child,
    this.onTap,
  })  : padding = null,
        color = null,
        isShadow = true,
        borderRadius = null,
        super(key: key);

  const MxcCard.custom({
    Key? key,
    required this.child,
    this.onTap,
    this.color,
    this.padding,
    this.isShadow = true,
    this.borderRadius,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onTap;
  final Color? color;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final bool isShadow;

  @override
  Widget build(BuildContext context) {
    Widget widget = Container(
      padding: padding ?? const EdgeInsets.all(16),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        color: color ?? ColorsTheme.of(context).boxComponents,
        boxShadow: isShadow
            ? [
                MxcBoxShadow(
                  color: ColorsTheme.of(context).shadow2,
                ),
              ]
            : null,
      ),
      child: child,
    );
    if (onTap != null) {
      widget = InkWell(
        onTap: onTap,
        child: widget,
      );
    }
    return widget;
  }
}
