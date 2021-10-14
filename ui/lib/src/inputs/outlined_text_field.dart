import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcOutlinedTextField extends StatefulWidget {
  final String? label;
  final bool readOnly;
  final String? hint;
  final String? initialValue;
  final FormFieldValidator<String>? validator;
  final TextInputAction? action;
  final double width;
  final FocusNode? focusNode;
  final int? maxLines;
  final MxcOutlinedTextFieldButton? button;
  final IconData? prefixIcon;
  final Border? border;
  final bool autoFocus;
  final void Function(FocusNode)? onFocusCreated;
  final void Function(bool)? onFocusChanged;
  final void Function(String)? onChanged;
  final void Function(int)? onStepperChanged;

  final TextEditingController? controller;

  const MxcOutlinedTextField({
    Key? key,
    this.controller,
    this.label,
    this.hint,
    this.initialValue,
    this.validator,
    this.action,
    this.readOnly = false,
    this.maxLines = 1,
    this.button,
    this.width = 340,
    this.focusNode,
    this.border,
    this.autoFocus = false,
    this.onFocusCreated,
    this.onFocusChanged,
    this.onChanged,
    this.prefixIcon,
    this.onStepperChanged,
  })  : super(key: key);

  const MxcOutlinedTextField.viewOnly({
    Key? key,
    this.label,
    this.hint,
    this.initialValue,
    this.controller,
    this.validator,
    this.action,
    this.maxLines = 1,
    this.button,
    this.width = 340,
    this.focusNode,
    this.border,
    this.autoFocus = false,
    this.onFocusCreated,
    this.onFocusChanged,
    this.onChanged,
    this.prefixIcon,
    this.onStepperChanged,
  })  : readOnly = true,
        super(key: key);

  @override
  State<MxcOutlinedTextField> createState() => _MxcOutlinedTextFieldState();
}

class _MxcOutlinedTextFieldState extends State<MxcOutlinedTextField> {
  late final FocusNode _focusNode;
  late bool _focused;
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ??
        FocusNode(
          debugLabel: widget.label,
          onKey: (FocusNode node, RawKeyEvent evt) {
            if (evt is RawKeyDownEvent) {
              if (evt.logicalKey == LogicalKeyboardKey.escape) {
                return KeyEventResult.handled;
              }
            }
            return KeyEventResult.ignored;
          },
        );
    _focused = _focusNode.hasFocus;
    _focusNode.addListener(_focusNodeListener);

    widget.onFocusCreated?.call(_focusNode);

    _textController = TextEditingController(text: widget.initialValue);
  }

  void _focusNodeListener() {
    if (_focusNode.hasFocus != _focused) {
      setState(() => _focused = _focusNode.hasFocus);
    }

    widget.onFocusChanged?.call(_focused);
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.focusNode == null) _focusNode.dispose();

    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: Column(
        children: [
          if (widget.label != null) ...{
            const SizedBox(height: 8),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: EdgeInsets.only(
                top: _focused ? 6 : 3,
                bottom: _focused ? 3 : 6,
              ),
              alignment: Alignment.centerLeft,
              child: widget.readOnly ? 
                Text(
                    widget.label!,
                    maxLines: 1,
                    style: FontTheme.of(context).middle.label(),
                ) :
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 200),
                  style: _focused
                      ? FontTheme.of(context).small().copyWith(
                            color: MxcScopedTheme.of(context).primaryColor,
                          )
                      : FontTheme.of(context).middle(),
                  child: Text(
                    widget.label!,
                    maxLines: 1,
                  ),
                ),
            ),
          },
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              border: widget.border ??
                  Border(
                    bottom: BorderSide(
                      width: _focused && !widget.readOnly ? 2 : 1,
                      color: _focused
                          ? MxcScopedTheme.of(context).primaryColor
                          : ColorsTheme.of(context).textPrimaryAndIcons,
                    ),
                  ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Row(
              children: [
                if (widget.prefixIcon != null) ...{
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(
                      widget.prefixIcon,
                      color: _focused
                          ? MxcScopedTheme.of(context).primaryColor
                          : ColorsTheme.of(context).textPrimaryAndIcons,
                    ),
                  )
                },
                Expanded(
                  child: TextFormField(
                    readOnly: widget.readOnly,
                    focusNode: _focusNode,
                    maxLines: widget.maxLines,
                    textInputAction: widget.action,
                    validator: widget.validator,
                    controller: widget.controller ?? _textController,
                    cursorColor: ColorsTheme.of(context).textPrimaryAndIcons,
                    style: FontTheme.of(context).big(),
                    onChanged: widget.onChanged,
                    autofocus: widget.autoFocus,
                    decoration: InputDecoration(
                      isDense: true,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: widget.hint,
                      hintStyle: FontTheme.of(context).middle.label(),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  ),
                ),
                if (widget.button != null)
                  MxcScopedTheme(
                    data: MxcScopedThemeData(
                      primaryColor: _focused
                          ? MxcScopedTheme.of(context).primaryColor
                          : ColorsTheme.of(context).textPrimaryAndIcons,
                    ),
                    child: widget.button!,
                  ),
                if (widget.onStepperChanged != null)
                  MxcStepperButton(
                    controller: _textController,
                    onStepperChanged: (value) =>
                        widget.onStepperChanged!(value),
                  )
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class MxcOutlinedTextFieldButton extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;

  const MxcOutlinedTextFieldButton({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        child: Icon(
          icon,
          size: 32,
          color: ColorsTheme.of(context).mxcBlue,
        ),
      ),
    );
  }
}

class MxcStepperButton extends StatefulWidget {
  final int step;
  final TextEditingController? controller;
  final void Function(int) onStepperChanged;

  const MxcStepperButton({
    Key? key,
    required this.onStepperChanged,
    this.step = 1,
    this.controller,
  }) : super(key: key);

  @override
  _MxcStepperChangedButtonState createState() =>
      _MxcStepperChangedButtonState();
}

class _MxcStepperChangedButtonState extends State<MxcStepperButton> {
  int get _step => widget.step;
  TextEditingController? get _controller => widget.controller;
  int _count = 0;

  void subtract() {
    if (_controller != null && _controller!.text.isNotEmpty) {
      _count = int.tryParse(_controller!.text)!;
    }

    if (_count == 0) return;

    _count = _count - _step;
    _controller!.text = _count.toString();
    setState(() {});

    widget.onStepperChanged(_count);
  }

  void add() {
    if (_controller != null && _controller!.text.isNotEmpty) {
      _count = int.tryParse(_controller!.text)!;
    }

    _count = _count + _step;
    _controller!.text = _count.toString();
    setState(() {});

    widget.onStepperChanged(_count);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: subtract,
          child: MxcCard(
            color: ColorsTheme.of(context).mxcBlue20,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                Icons.remove,
                size: 32,
                color: ColorsTheme.of(context).mxcBlue,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: add,
          child: MxcCard(
            color: ColorsTheme.of(context).mxcBlue20,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                Icons.add,
                size: 32,
                color: ColorsTheme.of(context).mxcBlue,
              ),
            ),
          ),
        )
      ],
    );
  }
}
