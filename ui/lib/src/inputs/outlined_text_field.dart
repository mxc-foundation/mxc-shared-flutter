import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcOutlinedTextField extends StatefulWidget {
  final String? label;
  final bool readOnly;
  final String? hint;
  final FormFieldValidator<String>? validator;
  final TextInputAction? action;
  final double width;
  final FocusNode? focusNode;
  final MxcOutlinedTextFieldButton? button;
  final IconData? prefixIcon;

  final TextEditingController? _controller;
  final String? _initialText;

  const MxcOutlinedTextField({
    required Key? key,
    required TextEditingController controller,
    this.label,
    this.hint,
    this.validator,
    this.action,
    this.readOnly = false,
    this.button,
    this.width = 340,
    this.focusNode,
    this.prefixIcon,
  })  : _controller = controller,
        _initialText = null,
        super(key: key);

  const MxcOutlinedTextField.viewOnly({
    Key? key,
    required String text,
    this.label,
    this.hint,
    this.validator,
    this.action,
    this.button,
    this.width = 340,
    this.focusNode,
    this.prefixIcon,
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
    focusNode = widget.focusNode ?? FocusNode();
    focused = focusNode.hasFocus;
    focusNode.addListener(_focusNodeListener);
  }

  void _focusNodeListener() {
    if (focusNode.hasFocus != focused) {
      setState(() => focused = focusNode.hasFocus);
    }
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        child: Icon(
          icon,
          size: 16,
          color: MxcScopedTheme.of(context).primaryColor,
        ),
      ),
      onTap: () {},
    );
  }
}
