import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class SegmentationTab extends StatefulWidget {
  const SegmentationTab({
    required Key? key,
    required this.labels,
    required this.onChanged,
  }) : super(key: key);

  final List<String> labels;
  final void Function(int) onChanged;

  @override
  State<SegmentationTab> createState() => _SegmentationTabState();
}

class _SegmentationTabState extends State<SegmentationTab> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl<int>(
      children: {
        for (var i = 0; i < widget.labels.length; i++)
          i: Text(
            widget.labels[i],
            key: ValueKey('tab_item_$i'),
            style: selectedTab == i
                ? FontTheme.of(context).middle.button()
                : FontTheme.of(context).middle.label(),
          ),
      },
      onValueChanged: (v) {
        setState(() => selectedTab = v!);
        widget.onChanged(v!);
      },
      groupValue: selectedTab,
      thumbColor: MxcScopedTheme.of(context).primaryColor.withOpacity(0.9),
      backgroundColor: MxcScopedTheme.of(context).primaryColor.withOpacity(0.2),
    );
  }
}
