import 'package:flutter/cupertino.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcSegmentationTab extends StatefulWidget {
  const MxcSegmentationTab({
    required Key? key,
    required this.labels,
    required this.onChanged,
    this.initialPage = 0,
  }) : super(key: key);

  final List<String> labels;
  final void Function(int) onChanged;
  final int initialPage;

  @override
  State<MxcSegmentationTab> createState() => _MxcSegmentationTabState();
}

class _MxcSegmentationTabState extends State<MxcSegmentationTab> {
  late int selectedTab = widget.initialPage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoSlidingSegmentedControl<int>(
        children: {
          for (var i = 0; i < widget.labels.length; i++)
            i: Text(
              widget.labels[i],
              key: ValueKey('tab_item_$i'),
              textAlign: TextAlign.center,
              style: selectedTab == i
                  ? FontTheme.of(context).subtitle1.button()
                  : FontTheme.of(context).subtitle1.label(),
            ),
        },
        onValueChanged: (v) {
          setState(() => selectedTab = v!);
          widget.onChanged(v!);
        },
        groupValue: selectedTab,
        thumbColor: MxcScopedTheme.of(context).primaryColor,
        backgroundColor:
            MxcScopedTheme.of(context).primaryColor.withOpacity(0.2),
      ),
    );
  }
}
