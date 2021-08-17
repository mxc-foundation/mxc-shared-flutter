import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class PageIndicator extends StatelessWidget {
  final int length;
  final int selectedPage;
  final void Function(int) onSelected;
  const PageIndicator({
    required Key? key,
    required this.length,
    required this.selectedPage,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < length; i++)
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => onSelected(i),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    color: i == selectedPage
                        ? MxcScopedTheme.of(context).primaryColor
                        : ColorsTheme.of(context).textLabel,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
