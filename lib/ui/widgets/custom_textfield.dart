import 'package:flutter/material.dart';

/// CustomTextField is a reusable text field widget with customizable properties.
class CustomTextField extends StatelessWidget {
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

  /// The maximum number of lines of the text field.
  final int? maxLines;

  /// The suffix widget of the text field.
  final Widget? suffix;

  /// The prefix widget of the text field.
  final Widget? prefix;

  /// The callback function for when the text field's value changes.
  final ValueChanged<String>? onChanged;

  /// The keyboard type of the text field.
  final TextInputType? keyboardType;

  /// The initial value for the text field
  final String? initialValue;

  /// If true the decoration's container is filled with [fillColor].
  final bool filled;

  /// The color to fill the decoration's container with, if [filled] is true.
  final Color? fillColor;

  /// The callback function for when the text field is tapped.
  final Function()? onTap;

  ///This is to explicity set the borderRadius of the form field
  final BorderRadius? borderRadius;

  /// Constructs a CustomTextField with required and optional parameters.
  const CustomTextField({
    Key? key,
    this.hintText,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
    this.borderColor = Colors.lightBlue,
    this.controller,
    this.initialValue,
    this.borderRadius,
    this.validator,
    this.enabled = true,
    this.focusedBorderColor = Colors.lightBlue,
    this.cursorColor = Colors.lightBlue,
    this.textStyle,
    this.borderWidth = 1.0,
    this.label,
    this.maxLines,
    this.suffix,
    this.prefix,
    this.onChanged,
    this.keyboardType,
    this.filled = false,
    this.fillColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InputDecoration inputDecoration = InputDecoration(
      suffixIcon: suffix,
      prefixIcon: prefix,
      contentPadding: contentPadding,
      hintText: hintText,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: borderColor,
          width: borderWidth,
        ),
        borderRadius: borderRadius ?? BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: focusedBorderColor,
          width: borderWidth,
        ),
        borderRadius: borderRadius ?? BorderRadius.circular(12),
      ),
      fillColor: fillColor,
      filled: filled,
    );

    if (label == null) {
      return GestureDetector(
        onTap: onTap,
        child: IgnorePointer(
          ignoring: onTap != null,
          child: TextFormField(
            controller: controller,
            initialValue: initialValue,
            validator: validator,
            enabled: enabled,
            cursorColor: cursorColor,
            keyboardType: keyboardType,
            style: textStyle ??
                Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.black),
            maxLines: maxLines,
            decoration: inputDecoration,
            onChanged: onChanged,
          ),
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTextStyle(
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.black, fontWeight: FontWeight.w500),
          child: label!,
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: onTap,
          child: IgnorePointer(
            ignoring: onTap != null,
            child: TextFormField(
              controller: controller,
              initialValue: initialValue,
              validator: validator,
              enabled: enabled,
              cursorColor: cursorColor,
              keyboardType: keyboardType,
              style: textStyle ??
                  Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.black),
              maxLines: maxLines,
              decoration: inputDecoration,
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
