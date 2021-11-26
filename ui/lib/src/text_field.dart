import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcTextField extends FormField<String> {
  final TextEditingController? controller;

  MxcTextField({
    required Key? key,
    String? label,
    required TextEditingController this.controller,
    String? hint,
    FormFieldValidator<String>? validator,
    TextInputAction? action,
    bool readOnly = false,
    MxcTextFieldButton? button,
    double width = double.infinity,
    FocusNode? focusNode,
    TextInputType? keyboardType,
    String? suffixText,
    bool obscure = false,
    AutovalidateMode? autovalidateMode,
  }) : super(
          key: key,
          initialValue: controller.text,
          validator: validator,
          autovalidateMode: autovalidateMode,
          builder: (field) {
            return _MxcNonFormTextField(
              key: null,
              label: label,
              controller: controller,
              action: action,
              button: button,
              focusNode: focusNode,
              hint: hint,
              keyboardType: keyboardType,
              obscure: obscure,
              readOnly: readOnly,
              suffixText: suffixText,
              width: width,
              errorText: field.errorText,
            );
          },
        );

  MxcTextField.viewOnly({
    Key? key,
    String? label,
    required String text,
    String? hint,
    TextInputAction? action,
    MxcTextFieldButton? button,
    double width = double.infinity,
    FocusNode? focusNode,
    TextInputType? keyboardType,
    String? suffixText,
    bool obscure = false,
  })  : controller = null,
        super(
          key: key,
          builder: (s) => _MxcNonFormTextField.viewOnly(
            label: label,
            text: text,
            action: action,
            button: button,
            focusNode: focusNode,
            hint: hint,
            keyboardType: keyboardType,
            obscure: obscure,
            suffixText: suffixText,
            width: width,
          ),
        );

  @override
  FormFieldState<String> createState() => _MxcTextFieldFormState();
}

class _MxcTextFieldFormState extends FormFieldState<String> {
  @override
  MxcTextField get widget => super.widget as MxcTextField;

  @override
  void initState() {
    super.initState();
    widget.controller?.addListener(_controllerListener);
  }

  void _controllerListener() => setValue(widget.controller!.text);

  @override
  void dispose() {
    widget.controller?.removeListener(_controllerListener);
    super.dispose();
  }
}

class _MxcNonFormTextField extends StatefulWidget {
  final String? label;
  final bool readOnly;
  final String? hint;
  final TextInputAction? action;
  final TextInputType? keyboardType;
  final double width;
  final FocusNode? focusNode;
  final MxcTextFieldButton? button;
  final String? suffixText;

  final TextEditingController? _controller;
  final bool obscure;
  final String? _initialValue;
  final String? errorText;
  final ValueChanged<String>? onChanged;

  const _MxcNonFormTextField({
    required Key? key,
    required this.label,
    required TextEditingController controller,
    this.hint,
    this.action,
    this.readOnly = false,
    this.button,
    this.width = double.infinity,
    this.focusNode,
    this.keyboardType,
    this.suffixText,
    this.obscure = false,
    this.errorText,
    this.onChanged,
  })  : _controller = controller,
        _initialValue = null,
        super(key: key);

  const _MxcNonFormTextField.viewOnly({
    Key? key,
    required this.label,
    required String text,
    this.hint,
    this.action,
    this.button,
    this.width = double.infinity,
    this.focusNode,
    this.keyboardType,
    this.suffixText,
    this.obscure = false,
  })  : _initialValue = text,
        readOnly = true,
        _controller = null,
        errorText = null,
        onChanged = null,
        super(key: key);

  @override
  State<_MxcNonFormTextField> createState() => _MxcNonFormTextFieldState();
}

class _MxcNonFormTextFieldState extends State<_MxcNonFormTextField> {
  late final FocusNode focusNode;
  late bool focused;
  TextEditingController? _internalController;

  TextEditingController get controller {
    if (widget._controller != null) return widget._controller!;
    return _internalController ??=
        TextEditingController(text: widget._initialValue);
  }

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
    _internalController?.dispose();
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
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    readOnly: widget.readOnly,
                    keyboardType: widget.keyboardType,
                    focusNode: focusNode,
                    textInputAction: widget.action,
                    controller: controller,
                    cursorColor: ColorsTheme.of(context).textPrimaryAndIcons,
                    style: FontTheme.of(context).big(),
                    obscureText: widget.obscure,
                    onChanged: widget.onChanged,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      isDense: true,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
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
                    child: widget.button!,
                  ),
              ],
            ),
          ),
          if (widget.errorText != null) ...[
            const SizedBox(height: 4),
            SizedBox(
              width: double.infinity,
              child: Text(
                widget.errorText!,
                style: FontTheme.of(context).small.error(),
              ),
            ),
          ],
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class MxcTextFieldButton extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;
  final Color? color;

  const MxcTextFieldButton({
    Key? key,
    required this.icon,
    required this.onTap,
    this.color,
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
          color: color ?? MxcScopedTheme.of(context).primaryColor,
        ),
      ),
    );
  }
}
