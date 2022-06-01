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

class MxcSliderWithMiniTextField extends StatefulWidget {
  const MxcSliderWithMiniTextField({
    required Key? key,
    required this.value,
    required this.onChanged,
    required this.text,
    this.min = 0,
    this.max = 1,
    this.errorMsg,
    this.enabled = true,
  }) : super(key: key);

  final double value;
  final double min;
  final double max;
  final String? errorMsg;
  final void Function(double) onChanged;
  final String text;
  final bool enabled;

  @override
  State<MxcSliderWithMiniTextField> createState() =>
      _MxcSliderWithMiniTextFieldState();
}

class _MxcSliderWithMiniTextFieldState
    extends State<MxcSliderWithMiniTextField> {
  late final controller = TextEditingController();

  String _previousText = '';

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (controller.text != _previousText) {
        _previousText = controller.text;
        final newValue = double.tryParse(controller.text);
        if (newValue == null) return;
        widget.onChanged(newValue);
      }
    });
    _updateText(widget.value);
  }

  void _updateText(double value) {
    controller.text = value.toString();
    _previousText = value.toString();
  }

  @override
  void didUpdateWidget(covariant MxcSliderWithMiniTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      if (double.tryParse(controller.text) != widget.value) {
        _updateText(widget.value);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
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
            const Spacer(),
            MxcMiniTextField(
              key: null,
              controller: controller,
              error: widget.errorMsg != null,
              onChanged: widget.onChanged,
              disabled: !widget.enabled,
            ),
          ],
        ),
        const SizedBox(height: 8),
        MxcSlider(
          key: null,
          max: widget.max.toDouble(),
          value: widget.value.toDouble(),
          onChanged: widget.onChanged,
          enabled: widget.enabled,
        ),
      ],
    );
  }
}
