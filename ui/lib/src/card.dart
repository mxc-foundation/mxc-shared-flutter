import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const MxcCard({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget widget = Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorsTheme.of(context).boxComponents,
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
