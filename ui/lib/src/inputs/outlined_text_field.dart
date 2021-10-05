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
  final MxcOutlinedTextFieldButton? button;
  final IconData? prefixIcon;
  final void Function(FocusNode)? onFocusCreated;
  final void Function(bool)? onFocusChanged;
  final void Function(String)? onChanged;
  final void Function(int)? onCountChanged;

  final TextEditingController? _controller;
  final String? _initialText;

  const MxcOutlinedTextField({
    required Key? key,
    required TextEditingController controller,
    this.label,
    this.hint,
    this.initialValue,
    this.validator,
    this.action,
    this.readOnly = false,
    this.button,
    this.width = 340,
    this.focusNode,
    this.onFocusCreated,
    this.onFocusChanged,
    this.onChanged,
    this.prefixIcon,
    this.onCountChanged,
  })  : _controller = controller,
        _initialText = null,
        super(key: key);

  const MxcOutlinedTextField.viewOnly({
    Key? key,
    required String text,
    this.label,
    this.hint,
    this.initialValue,
    this.validator,
    this.action,
    this.button,
    this.width = 340,
    this.focusNode,
    this.onFocusCreated,
    this.onFocusChanged,
    this.onChanged,
    this.prefixIcon,
    this.onCountChanged,
  })  : _initialText = text,
        readOnly = true,
        _controller = null,
        super(key: key);

  @override
  State<MxcOutlinedTextField> createState() => _MxcOutlinedTextFieldState();
}

class _MxcOutlinedTextFieldState extends State<MxcOutlinedTextField> {
  late final FocusNode focusNode;
  late bool focused;

  @override
  void initState() {
    super.initState();
    focusNode = widget.focusNode ??
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
    focused = focusNode.hasFocus;
    focusNode.addListener(_focusNodeListener);

    widget.onFocusCreated?.call(focusNode);
  }

  void _focusNodeListener() {
    if (focusNode.hasFocus != focused) {
      setState(() => focused = focusNode.hasFocus);
    }

    widget.onFocusChanged?.call(focused);
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.focusNode == null) focusNode.dispose();
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
                top: focused ? 6 : 3,
                bottom: focused ? 3 : 6,
              ),
              alignment: Alignment.centerLeft,
              height: 24,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 200),
                style: focused
                    ? FontTheme.of(context).small().copyWith(
                          color: MxcScopedTheme.of(context).primaryColor,
                        )
                    : FontTheme.of(context).middle(),
                child: Text(
                  widget.label!,
                  maxLines: 1,
                ),
              ),
            )
          },
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: focused ? 2 : 1,
                  color: focused
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
                      color: focused
                          ? MxcScopedTheme.of(context).primaryColor
                          : ColorsTheme.of(context).textPrimaryAndIcons,
                    ),
                  )
                },
                Expanded(
                  child: TextFormField(
                    readOnly: widget.readOnly,
                    initialValue: widget._initialText,
                    focusNode: focusNode,
                    textInputAction: widget.action,
                    validator: widget.validator,
                    controller: widget._controller,
                    cursorColor: ColorsTheme.of(context).textPrimaryAndIcons,
                    style: FontTheme.of(context).big(),
                    onChanged: widget.onChanged,
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
                      primaryColor: focused
                          ? MxcScopedTheme.of(context).primaryColor
                          : ColorsTheme.of(context).textPrimaryAndIcons,
                    ),
                    child: widget.button!,
                  ),
                if (widget.onCountChanged != null)
                  MxcDigtalChangedButton(
                      onCountChanged: (value) => widget.onCountChanged!(value))
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

class MxcDigtalChangedButton extends StatefulWidget {
  final int step;
  final void Function(int) onCountChanged;

  const MxcDigtalChangedButton({
    Key? key,
    required this.onCountChanged,
    this.step = 1,
  }) : super(key: key);

  @override
  _MxcDigtalChangedButtonState createState() => _MxcDigtalChangedButtonState();
}

class _MxcDigtalChangedButtonState extends State<MxcDigtalChangedButton> {
  int get _step => widget.step;
  int _count = 0;

  void subtract() {
    if (_count == 0) return;

    _count = _count - _step;
    setState(() {});
    widget.onCountChanged(_count);
  }

  void add() {
    _count = _count + _step;
    setState(() {});
    widget.onCountChanged(_count);
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
            ))
      ],
    );
  }
}
