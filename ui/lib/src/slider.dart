import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcSlider extends StatelessWidget {
  final double? value;
  final void Function(double)? onChanged;
  final List<String>? labels;
  final int? divisions;

  const MxcSlider({
    required Key? key,
    required double value,
    required void Function(double) onChanged,
    this.labels,
    this.divisions,
  })  : value = value,
        onChanged = onChanged,
        assert(labels == null || labels.length >= 3),
        super(key: key);

  const MxcSlider.loading({
    required Key? key,
  })  : value = null,
        onChanged = null,
        labels = null,
        divisions = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        SizedBox(
          height: 20,
          child: SliderTheme(
            data: SliderThemeData(
              trackShape: CustomTrackShape(),
              trackHeight: 5,
            ),
            child: value == null || onChanged == null
                ? Center(
                    child: LinearProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(
                        MxcScopedTheme.of(context).primaryColor,
                      ),
                      backgroundColor: MxcScopedTheme.of(context)
                          .primaryColor
                          .withOpacity(0.2),
                    ),
                  )
                : Slider(
                    value: value!,
                    onChanged: onChanged,
                    activeColor: MxcScopedTheme.of(context).primaryColor,
                    divisions: divisions,
                    inactiveColor: MxcScopedTheme.of(context)
                        .primaryColor
                        .withOpacity(0.2),
                  ),
          ),
        ),
        if (labels != null)
          Row(
            children: [
              Expanded(
                child: Text(
                  labels!.first,
                  style: FontTheme.of(context).small.label(),
                  textAlign: TextAlign.left,
                ),
              ),
              for (final label in labels!.skip(1).take(labels!.length - 2))
                Expanded(
                  child: Text(
                    label,
                    style: FontTheme.of(context).small.label(),
                    textAlign: TextAlign.center,
                  ),
                ),
              Expanded(
                child: Text(
                  labels!.last,
                  style: FontTheme.of(context).small.label(),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight!;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}