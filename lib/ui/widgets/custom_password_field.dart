import 'package:blog_application/constants/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  /// The text to display as a hint inside the text field.
  final String? hintText;

  /// The padding around the content of the text field.
  final EdgeInsetsGeometry contentPadding;

  /// The color of the border of the text field.
  final Color borderColor;

  /// The text controller for managing the text field's input.
  final TextEditingController? controller;

  /// The validator function for input validation.
  final String? Function(String?)? validator;

  /// A flag indicating whether the text field is enabled.
  final bool enabled;

  /// The color of the border of the text field when focused.
  final Color focusedBorderColor;

  /// The color of the cursor of the text field.
  final Color cursorColor;

  /// The text style of the text field.
  final TextStyle? textStyle;

  /// The width of the border of the text field.
  final double borderWidth;

  /// The label widget of the text field.
  final Widget? label;

  final bool obscureText;

  final void Function(String)? onChanged;

  const CustomPasswordField({
    Key? key,
    this.hintText,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
    this.borderColor = Colors.lightBlue,
    this.controller,
    this.validator,
    this.enabled = true,
    this.focusedBorderColor = Colors.lightBlue,
    this.cursorColor = Colors.lightBlue,
    this.textStyle,
    this.borderWidth = 1.0,
    this.label,
    this.obscureText = false,
    this.onChanged,
  }) : super(key: key);

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  /// A flag indicating whether the password is obscured. Defaults to widget.obscureText.
  bool _obscureValue = true;

  @override
  void initState() {
    _obscureValue = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final InputDecoration inputDecoration = InputDecoration(
      contentPadding: widget.contentPadding,
      hintText: widget.hintText,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: widget.borderColor,
          width: widget.borderWidth,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: widget.focusedBorderColor,
          width: widget.borderWidth,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          DefaultTextStyle(
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Colors.black, fontWeight: FontWeight.w500),
            child: widget.label!,
          ),
        if (widget.label != null) const SizedBox(height: 8),
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          enabled: widget.enabled,
          cursorColor: widget.cursorColor,
          onChanged: widget.onChanged,
          style: widget.textStyle ??
              Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.black),
          decoration: inputDecoration.copyWith(
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureValue = !_obscureValue;
                });
              },
              child: Icon(
                _obscureValue
                    ? CustomIcons.showFilled
                    : CustomIcons.hideFilled,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
          obscureText: _obscureValue,
        ),
      ],
    );
  }
}
