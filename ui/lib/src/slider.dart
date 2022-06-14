import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcSlider extends StatelessWidget {
  const MxcSlider({
    required Key? key,
    required double this.value,
    required void Function(double) this.onChanged,
    this.labels,
    this.divisions,
    this.max,
    this.enabled = true,
    this.thumbPadding = 0,
  })  : assert(labels == null || labels.length >= 3),
        super(key: key);

  const MxcSlider.loading({
    required Key? key,
  })  : value = null,
        onChanged = null,
        labels = null,
        divisions = null,
        max = null,
        enabled = false,
        thumbPadding = 0,
        super(key: key);

  final double? value;
  final double? max;
  final void Function(double)? onChanged;
  final List<String>? labels;
  final int? divisions;
  final bool enabled;
  final double thumbPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        SizedBox(
          height: 20,
          child: SliderTheme(
            data: SliderThemeData(
              trackShape: CustomTrackShape(),
              thumbShape: CustomThumbShape(thumbPadding),
              overlayShape: CustomOverlayShape(thumbPadding),
              trackHeight: 6,
              disabledThumbColor: ColorsTheme.of(context).sliderDisabledKnob,
              disabledActiveTrackColor:
                  ColorsTheme.of(context).sliderDisabledBaseActive,
              disabledInactiveTrackColor:
                  ColorsTheme.of(context).sliderDisabledBaseDefault,
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
                    onChanged: enabled ? onChanged : null,
                    max: max ?? 1,
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
                  style: FontTheme.of(context).caption1.label(),
                  textAlign: TextAlign.left,
                ),
              ),
              for (final label in labels!.skip(1).take(labels!.length - 2))
                Expanded(
                  child: Text(
                    label,
                    style: FontTheme.of(context).caption1.label(),
                    textAlign: TextAlign.center,
                  ),
                ),
              Expanded(
                child: Text(
                  labels!.last,
                  style: FontTheme.of(context).caption1.label(),
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
  @override
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
    return Rect.fromLTWH(trackLeft - 8, trackTop, trackWidth + 8, trackHeight);
  }
}

class CustomThumbShape extends RoundSliderThumbShape {
  CustomThumbShape(this.thumbPadding);

  final double thumbPadding;

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    center = Offset(
      thumbPadding +
          (sizeWithOverflow.width - thumbPadding * 2) *
              (center.dx / sizeWithOverflow.width),
      center.dy,
    );
    super.paint(
      context,
      center,
      activationAnimation: activationAnimation,
      enableAnimation: enableAnimation,
      isDiscrete: isDiscrete,
      labelPainter: labelPainter,
      parentBox: parentBox,
      sliderTheme: sliderTheme,
      textDirection: textDirection,
      value: value,
      textScaleFactor: textScaleFactor,
      sizeWithOverflow: sizeWithOverflow,
    );
  }
}

class CustomOverlayShape extends RoundSliderOverlayShape {
  CustomOverlayShape(this.thumbPadding);

  final double thumbPadding;

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    center = Offset(
      thumbPadding +
          (sizeWithOverflow.width - thumbPadding * 2) *
              (center.dx / sizeWithOverflow.width),
      center.dy,
    );
    super.paint(
      context,
      center,
      activationAnimation: activationAnimation,
      enableAnimation: enableAnimation,
      isDiscrete: isDiscrete,
      labelPainter: labelPainter,
      parentBox: parentBox,
      sliderTheme: sliderTheme,
      textDirection: textDirection,
      value: value,
      textScaleFactor: textScaleFactor,
      sizeWithOverflow: sizeWithOverflow,
    );
  }
}
