import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';
import 'dart:math' as math;

class MxcSlider extends StatelessWidget {
  const MxcSlider({
    required Key? key,
    required double this.value,
    required void Function(double) this.onChanged,
    this.labels,
    this.divisions,
    this.max,
    this.enabled = true,
    this.thumbPadding = 16,
    this.enableThumbShift = false,
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
        thumbPadding = 16,
        enableThumbShift = false,
        super(key: key);

  final double? value;
  final double? max;
  final void Function(double)? onChanged;
  final List<String>? labels;
  final int? divisions;
  final bool enabled;
  final double thumbPadding;
  final bool enableThumbShift;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        SizedBox(
          height: 20,
          child: SliderTheme(
            data: SliderThemeData(
              trackShape: CustomTrackShape(
                thumbPadding,
                enableThumbShift: enableThumbShift,
              ),
              thumbShape: CustomThumbShape(
                thumbPadding,
                enableThumbShift: enableThumbShift,
              ),
              overlayShape: CustomOverlayShape(
                thumbPadding,
                enableThumbShift: enableThumbShift,
              ),
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

const thumbWidth = 8;

class CustomTrackShape extends RoundedRectSliderTrackShape {
  CustomTrackShape(
    this.thumbPadding, {
    required this.enableThumbShift,
  });

  final double thumbPadding;
  final bool enableThumbShift;

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
    return Rect.fromLTWH(
      trackLeft + thumbPadding,
      trackTop,
      trackWidth - thumbPadding * 2,
      trackHeight,
    );
  }
}

class CustomThumbShape extends RoundSliderThumbShape {
  CustomThumbShape(
    this.thumbPadding, {
    required this.enableThumbShift,
  });

  final double thumbPadding;
  final bool enableThumbShift;

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
    final double visualPosition;
    switch (textDirection) {
      case TextDirection.rtl:
        visualPosition = 1.0 - value;
        break;
      case TextDirection.ltr:
        visualPosition = value;
        break;
    }

    final Rect trackRect = sliderTheme.trackShape!.getPreferredRect(
      parentBox: parentBox,
      offset: Offset.zero,
      sliderTheme: sliderTheme,
      isDiscrete: isDiscrete,
    );

    final thumbShift = enableThumbShift ? thumbWidth : 0;
    center = Offset(
      thumbShift +
          thumbPadding +
          visualPosition * (trackRect.width - thumbShift * 2),
      trackRect.center.dy,
    );

    final Canvas canvas = context.canvas;
    final Tween<double> radiusTween = Tween<double>(
      begin: disabledThumbRadius ?? enabledThumbRadius,
      end: enabledThumbRadius,
    );
    final ColorTween colorTween = ColorTween(
      begin: sliderTheme.disabledThumbColor,
      end: sliderTheme.thumbColor,
    );

    final Color color = colorTween.evaluate(enableAnimation)!;
    final double radius = radiusTween.evaluate(enableAnimation);

    final Tween<double> elevationTween = Tween<double>(
      begin: 0,
      end: pressedElevation,
    );

    final double evaluatedElevation = elevationTween
        .transform((activationAnimation.value + enableAnimation.value) / 2);

    final Path path = Path()
      ..addArc(
        Rect.fromCenter(center: center, width: 2 * radius, height: 2 * radius),
        0,
        math.pi * 2,
      );
    canvas.drawShadow(path, Colors.black, evaluatedElevation, true);

    canvas.drawCircle(
      center,
      radius,
      Paint()..color = color,
    );
  }
}

class CustomOverlayShape extends RoundSliderOverlayShape {
  CustomOverlayShape(
    this.thumbPadding, {
    required this.enableThumbShift,
  });

  final double thumbPadding;
  final bool enableThumbShift;

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
    final double visualPosition;
    switch (textDirection) {
      case TextDirection.rtl:
        visualPosition = 1.0 - value;
        break;
      case TextDirection.ltr:
        visualPosition = value;
        break;
    }

    final Rect trackRect = sliderTheme.trackShape!.getPreferredRect(
      parentBox: parentBox,
      offset: Offset.zero,
      sliderTheme: sliderTheme,
      isDiscrete: isDiscrete,
    );

    final thumbShift = enableThumbShift ? thumbWidth : 0;
    center = Offset(
      thumbShift +
          thumbPadding +
          visualPosition * (trackRect.width - thumbShift * 2),
      trackRect.center.dy,
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
