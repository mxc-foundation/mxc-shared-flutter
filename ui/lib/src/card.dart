import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final Color? color;
  final EdgeInsets? padding;

  const MxcCard({
    Key? key,
    required this.child,
    this.onTap,
  })  : padding = null,
        color = null,
        super(key: key);

  const MxcCard.custom({
    Key? key,
    required this.child,
    this.onTap,
    this.color,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget widget = Container(
      padding: padding ?? const EdgeInsets.all(16),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color ?? ColorsTheme.of(context).boxComponents,
        boxShadow: [
          MxcBoxShadow(
            color: ColorsTheme.of(context).shadow2,
          ),
        ],
      ),
      child: child,
    );
    if (onTap != null) {
      widget = InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: widget,
      );
    }
    return widget;
  }
}
