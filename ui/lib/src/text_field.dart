import 'package:flutter/material.dart';
import 'package:mxc_ui/mxc_ui.dart';

class MxcTextField extends FormField<String> {
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

  MxcTextField.disabled({
    Key? key,
    String? label,
    required String text,
    String? hint,
    MxcTextFieldButton? button,
    double width = double.infinity,
    FocusNode? focusNode,
    String? suffixText,
    bool obscure = false,
  })  : controller = null,
        super(
          key: key,
          builder: (s) => _MxcNonFormTextField.viewOnly(
            disabled: true,
            label: label,
            text: text,
            button: button,
            focusNode: focusNode,
            hint: hint,
            obscure: obscure,
            suffixText: suffixText,
            width: width,
          ),
        );

  final TextEditingController? controller;

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
  })  : _controller = controller,
        _initialValue = null,
        onChanged = null,
        disabled = false,
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
    this.disabled = false,
  })  : _initialValue = text,
        readOnly = true,
        _controller = null,
        errorText = null,
        onChanged = null,
        super(key: key);

  final String? label;
  final bool readOnly;
  final String? hint;
  final TextInputAction? action;
  final TextInputType? keyboardType;
  final double width;
  final FocusNode? focusNode;
  final MxcTextFieldButton? button;
  final String? suffixText;
  final bool disabled;

  final TextEditingController? _controller;
  final bool obscure;
  final String? _initialValue;
  final String? errorText;
  final ValueChanged<String>? onChanged;

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
    if (widget.disabled) {
      focused = false;
    } else {
      focused = focusNode.hasFocus;
      focusNode.addListener(_focusNodeListener);
    }
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
                top: focused ? 4.5 : 3,
                bottom: focused ? 10 : 8,
              ),
              alignment: Alignment.centerLeft,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 200),
                style: widget.disabled
                    ? FontTheme.of(context).caption1().copyWith(
                          color: ColorsTheme.of(context).buttonDisabledLabel,
                        )
                    : focused
                        ? FontTheme.of(context).caption1().copyWith(
                              color: MxcScopedTheme.of(context).primaryColor,
                            )
                        : FontTheme.of(context).body1(),
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
                  color: widget.disabled
                      ? ColorsTheme.of(context).buttonDisabledLabel
                      : focused
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
                    style: (widget.disabled)
                        ? FontTheme.of(context).subtitle1().copyWith(
                            color: ColorsTheme.of(context).buttonDisabledLabel)
                        : FontTheme.of(context).subtitle1(),
                    obscureText: widget.obscure,
                    onChanged: widget.onChanged,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                      isDense: true,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: widget.hint,
                      hintStyle: FontTheme.of(context).subtitle1.label(),
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
                      primaryColor: widget.disabled
                          ? ColorsTheme.of(context).buttonDisabledLabel
                          : focused
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
                style: FontTheme.of(context).caption1.error(),
              ),
            ),
          ],
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

abstract class MxcTextFieldButton extends StatelessWidget {
  const factory MxcTextFieldButton({
    Key? key,
    required Widget child,
    required VoidCallback? onTap,
    Color? color,
  }) = _MxcTextFieldButton;

  const MxcTextFieldButton._({
    Key? key,
    required this.onTap,
    this.color,
  }) : super(key: key);

  const factory MxcTextFieldButton.icon({
    Key? key,
    required IconData icon,
    required VoidCallback? onTap,
    Color? color,
    double? size,
  }) = _MxcTextFieldIconButton;

  const factory MxcTextFieldButton.image({
    Key? key,
    required ImageProvider image,
    required VoidCallback? onTap,
    Color? color,
  }) = _MxcTextFieldImageButton;

  final VoidCallback? onTap;
  final Color? color;

  Widget buildChild(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, bottom: 6),
        child: buildChild(context),
      ),
    );
  }
}

class _MxcTextFieldButton extends MxcTextFieldButton {
  const _MxcTextFieldButton({
    Key? key,
    required this.child,
    required VoidCallback? onTap,
    Color? color,
  }) : super._(key: key, onTap: onTap, color: color);

  final Widget child;

  @override
  Widget buildChild(BuildContext context) => child;
}

class _MxcTextFieldIconButton extends MxcTextFieldButton {
  const _MxcTextFieldIconButton({
    Key? key,
    required this.icon,
    required VoidCallback? onTap,
    this.size,
    Color? color,
  }) : super._(key: key, onTap: onTap, color: color);

  final IconData icon;
  final double? size;

  @override
  Widget buildChild(BuildContext context) => Icon(
        icon,
        size: size ?? 16,
        color: color ?? MxcScopedTheme.of(context).primaryColor,
      );
}

class _MxcTextFieldImageButton extends MxcTextFieldButton {
  const _MxcTextFieldImageButton({
    Key? key,
    required this.image,
    required VoidCallback? onTap,
    Color? color,
  }) : super._(key: key, onTap: onTap, color: color);

  final ImageProvider image;

  @override
  Widget buildChild(BuildContext context) => Image(
        image: image,
        width: 16,
        height: 16,
        color: color ?? MxcScopedTheme.of(context).primaryColor,
      );
}
