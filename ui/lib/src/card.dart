import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final Color? color;
  final EdgeInsets? padding;
  final bool isShadow;

  const MxcCard({
    Key? key,
    required this.child,
    this.onTap,
  })  : padding = null,
        color = null,
        isShadow = true,
        super(key: key);

  const MxcCard.custom(
      {Key? key,
      required this.child,
      this.onTap,
      this.color,
      this.padding,
      this.isShadow = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget widget = Container(
      padding: padding ?? const EdgeInsets.all(16),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
