import 'dart:math';

import 'package:decimal/decimal.dart';
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
        super(key: key);

  final double? value;
  final double? max;
  final void Function(double)? onChanged;
  final List<String>? labels;
  final int? divisions;
  final bool enabled;

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
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

class AmountTextFieldWithSlider extends StatefulWidget {
  AmountTextFieldWithSlider({
    required Key? key,
    required this.value,
    required this.onChanged,
    required this.text,
    this.errorMsg,
    this.enabled = true,
    Decimal? min,
    required this.max,
    this.fractionDigits = 8,
  })  : min = min ?? Decimal.zero,
        super(key: key);

  final Decimal value;
  final Decimal min;
  final Decimal max;
  final String? errorMsg;
  final void Function(Decimal?) onChanged;
  final String text;
  final bool enabled;
  final int fractionDigits;

  @override
  State<AmountTextFieldWithSlider> createState() =>
      _AmountTextFieldWithSliderState();
}

class _AmountTextFieldWithSliderState extends State<AmountTextFieldWithSlider> {
  late final controller = TextEditingController();

  String _previousText = '';
  Decimal _previousSliderAmount = Decimal.zero;
  double _sliderValue = 0;

  @override
  void initState() {
    super.initState();
    _refreshValuesIfNeeded();
    controller.addListener(_onControllerListener);
  }

  void _onControllerListener() {
    if (controller.text != _previousText) {
      _onTextValueChanged(controller.text);
    }
  }

  @override
  void didUpdateWidget(covariant AmountTextFieldWithSlider oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value ||
        oldWidget.max != widget.max ||
        oldWidget.min != widget.min) {
      _refreshValuesIfNeeded(
        minOrMaxChanged:
            oldWidget.max != widget.max || oldWidget.min != widget.min,
      );
    }
  }

  void _refreshValuesIfNeeded({bool minOrMaxChanged = false}) {
    _refreshSliderValueIfNeeded(minOrMaxChanged: minOrMaxChanged);
    _refreshTextValueIfNeeded();
  }

  void _refreshSliderValueIfNeeded({bool minOrMaxChanged = false}) {
    if (minOrMaxChanged || _previousSliderAmount != widget.value) {
      final amountRange = widget.max - widget.min;
      if (amountRange <= Decimal.zero) {
        _sliderValue = 0;
      } else {
        final expectedValue =
            ((widget.value - widget.min) / amountRange).toDouble();
        _sliderValue = min(
          1,
          max(0, expectedValue),
        );
      }
      _previousSliderAmount = widget.value;
    }
  }

  void _refreshTextValueIfNeeded() {
    if (Decimal.tryParse(_previousText) != widget.value) {
      // round number to avoid showing full 18 digits-after-the-dot number
      // produced by slider
      final text = widget.value.floor(scale: 2).toString();
      _previousText = text;
      controller.text = text;
    }
  }

  void _onSliderValueChanged(double value) {
    _sliderValue = value;
    final amountFull =
        Decimal.parse(value.toString()) * (widget.max - widget.min) +
            widget.min;
    final amount =
        Decimal.parse(amountFull.toStringAsFixed(widget.fractionDigits));
    _previousSliderAmount = amount;
    widget.onChanged(amount);
  }

  void _onTextValueChanged(String value) {
    _previousText = value;
    final amount = Decimal.tryParse(value);
    widget.onChanged(amount);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 220,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.text,
                      style: FontTheme.of(context).subtitle1.label()),
                  if (widget.errorMsg != null) const SizedBox(height: 8),
                  if (widget.errorMsg != null)
                    Text(widget.errorMsg!,
                        style: FontTheme.of(context).caption1.error()),
                ],
              ),
            ),
            const SizedBox(width: 32),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: IntrinsicWidth(
                  child: Container(
                    constraints: const BoxConstraints(
                      minWidth: 64,
                    ),
                    child: MxcMiniTextField(
                      key: null,
                      controller: controller,
                      error: widget.errorMsg != null,
                      disabled: !widget.enabled,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 3),
        MxcSlider(
          key: null,
          value: _sliderValue,
          onChanged: _onSliderValueChanged,
          enabled: widget.min >= widget.max ? false : widget.enabled,
        ),
      ],
    );
  }
}
