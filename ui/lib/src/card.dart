import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcCard extends StatelessWidget {
  final Widget child;
  final Color? color;

  const MxcCard({
    Key? key,
    required this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
