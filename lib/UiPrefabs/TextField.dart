import 'package:flutter/material.dart';

class BySimonTextInput extends TextFormField {

  BySimonTextInput({
    String hint = "",
    super.key,
    super.controller,
    super.initialValue,
    super.keyboardType,
    super.textCapitalization,
    super.textInputAction,
    super.style,
    super.strutStyle,
    super.autofocus = false,
    super.readOnly = false,
    super.toolbarOptions,
    super.showCursor,
    super.obscureText = false,
    super.autocorrect = true,
    super.enableSuggestions = true,
    super.maxLengthEnforcement,
    super.maxLines = 1,
    super.minLines,
    super.maxLength,
    super.onChanged,
    super.onTap,
    super.onEditingComplete,
    super.onFieldSubmitted,
    Iterable<String>? autofillHints,
  }) : super(
      decoration: InputDecoration(
        labelText: hint,
        border: OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      )
  );
}