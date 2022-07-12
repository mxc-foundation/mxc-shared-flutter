import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class AmountTextFieldWithSlider extends StatefulWidget {
  AmountTextFieldWithSlider({
    required Key? key,
    required this.value,
    required this.onChanged,
    required this.hint,
    this.errorMsg,
    this.enabled = true,
    Decimal? min,
    required this.max,
    this.fractionDigits = 8,
    this.scrollPadding,
  })  : min = min ?? Decimal.zero,
        super(key: key);

  final Decimal value;
  final Decimal min;
  final Decimal max;
  final String? errorMsg;
  final void Function(Decimal?) onChanged;
  final Widget hint;
  final bool enabled;
  final int fractionDigits;
  final EdgeInsets? scrollPadding;

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
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 220,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    widget.hint,
                    if (widget.errorMsg != null)
                      Text(
                        widget.errorMsg!,
                        style: FontTheme.of(context).caption1.error(),
                      ),
                  ],
                ),
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
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: MxcMiniTextField(
                        key: null,
                        controller: controller,
                        scrollPadding: widget.scrollPadding,
                        error: widget.errorMsg != null,
                        disabled: !widget.enabled,
                      ),
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
          enableThumbShift: true,
          value: _sliderValue,
          onChanged: _onSliderValueChanged,
          enabled: widget.min >= widget.max ? false : widget.enabled,
        ),
      ],
    );
  }
}
