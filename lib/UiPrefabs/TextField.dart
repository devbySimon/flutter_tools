library flutter_tools;

import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class BySimonTextInput extends TextFormField {

  BySimonTextInput({
    required BuildContext context,
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
    bool slightOutline = false,
  }) : super(
      decoration: InputDecoration(
        labelText: hint,
        border: GradientOutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
                colors: [
                  if (!slightOutline) ...[
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.tertiary,
                  ],
                  if (slightOutline) ...[
                    Theme.of(context).colorScheme.shadow,
                    Theme.of(context).colorScheme.shadow,
                  ],
                  //add more colors
                ])
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      )
  );
}