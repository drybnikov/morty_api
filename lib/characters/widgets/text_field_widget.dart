import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef SuffixIcon = Widget Function(String text);

const textFieldHeight = 82.0;

class TextFieldWidget extends StatefulWidget {
  final String hintLabel;
  final String initialValue;
  final TextInputType inputType;
  final List<TextInputFormatter> inputFormatters;
  final Iterable<String>? autofillHints;
  final SuffixIcon? suffixIcon;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final bool? enabled;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final bool autofocus;
  final AutovalidateMode autovalidateMode;
  final bool hasFixedHeight;
  final Widget? prefixIcon;
  final int maxInputLines;
  final GestureTapCallback? onTap;
  final bool buildClearIcon;
  final bool readOnly;

  const TextFieldWidget({
    Key? key,
    this.hintLabel = '',
    this.inputType = TextInputType.number,
    this.textInputAction = TextInputAction.next,
    this.inputFormatters = const [],
    this.autofillHints,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.enabled,
    this.obscureText = false,
    this.initialValue = '',
    this.autofocus = false,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.hasFixedHeight = true,
    this.maxInputLines = 1,
    this.buildClearIcon = false,
    this.prefixIcon,
    this.onTap,
    this.readOnly = false,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController _textFieldController;

  @override
  void initState() {
    _textFieldController = TextEditingController(text: widget.initialValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.hasFixedHeight ? textFieldHeight : null,
      child: TextFormField(
        autofillHints: widget.autofillHints,
        controller: _textFieldController,
        textInputAction: widget.textInputAction,
        keyboardType: widget.inputType,
        enabled: widget.enabled,
        readOnly: widget.readOnly,
        autofocus: widget.autofocus,
        obscureText: widget.obscureText,
        autovalidateMode: widget.autovalidateMode,
        validator: widget.validator,
        onChanged: widget.onChanged,
        inputFormatters: widget.inputFormatters,
        maxLines: widget.maxInputLines,
        minLines: 1,
        onTap: widget.onTap,
        decoration: InputDecoration(
          labelText: widget.hintLabel,
          prefixIcon: widget.prefixIcon,
          //ignore: avoid-returning-widgets
          suffixIcon: _buildSuffix(),
        ),
      ),
    );
  }

  Widget? _buildSuffix() {
    return widget.suffixIcon != null
        ? widget.suffixIcon?.call(_textFieldController.text)
        : widget.buildClearIcon
            ? IconButton(
                onPressed: () => setState(() => _textFieldController.clear()),
                icon: const Icon(
                  Icons.clear,
                  size: 24,
                ),
              )
            : null;
  }
}
