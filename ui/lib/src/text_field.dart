import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcTextField extends StatefulWidget {
  final String? label;
  final bool readOnly;
  final String? hint;
  final FormFieldValidator<String>? validator;
  final TextInputAction? action;
  final TextInputType? keyboardType;
  final double width;
  final FocusNode? focusNode;
  final MxcTextFieldButton? button;
  final String? suffixText;

  final TextEditingController? _controller;
  final String? _initialText;
  final bool obscure;

  const MxcTextField({
    required Key? key,
    required this.label,
    required TextEditingController controller,
    this.hint,
    this.validator,
    this.action,
    this.readOnly = false,
    this.button,
    this.width = double.infinity,
    this.focusNode,
    this.keyboardType,
    this.suffixText,
    this.obscure = false,
  })  : _controller = controller,
        _initialText = null,
        super(key: key);

  const MxcTextField.viewOnly({
    Key? key,
    required this.label,
    required String text,
    this.hint,
    this.validator,
    this.action,
    this.button,
    this.width = 340,
    this.focusNode,
    this.keyboardType,
    this.suffixText,
    this.obscure = false,
  })  : _initialText = text,
        readOnly = true,
        _controller = null,
        super(key: key);

  @override
  State<MxcTextField> createState() => _MxcTextFieldState();
}

class _MxcTextFieldState extends State<MxcTextField> {
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
          const SizedBox(height: 8),
          if (widget.label != null)
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: EdgeInsets.only(
                top: focused ? 1 : 3,
                bottom: focused ? 8 : 4,
              ),
              alignment: Alignment.centerLeft,
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
            ),
          Stack(
            children: [
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
                padding: const EdgeInsets.only(bottom: 2),
                child: TextFormField(
                  readOnly: true,
                  style: FontTheme.of(context).big(),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    isDense: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: FontTheme.of(context).middle.transparent(),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.only(bottom: 2),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        readOnly: widget.readOnly,
                        initialValue: widget._initialText,
                        keyboardType: widget.keyboardType,
                        focusNode: focusNode,
                        textInputAction: widget.action,
                        validator: widget.validator,
                        controller: widget._controller,
                        cursorColor: ColorsTheme.of(context).textPrimaryAndIcons,
                        style: FontTheme.of(context).big(),
                        obscureText: widget.obscure,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          isDense: true,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          helperText: ' ',
                          hintText: widget.hint,
                          hintStyle: FontTheme.of(context).middle.label(),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          suffixText: widget.suffixText,
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
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: widget.button!,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class MxcTextFieldButton extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;

  const MxcTextFieldButton({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, bottom: 6),
        child: Icon(
          icon,
          size: 16,
          color: MxcScopedTheme.of(context).primaryColor,
        ),
      ),
    );
  }
}
