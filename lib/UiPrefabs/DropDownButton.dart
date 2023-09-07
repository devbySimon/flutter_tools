library flutter_tools;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tools/UiPrefabs/DecoratedBox.dart';

Widget BySimonDropDownButton(BuildContext context, Object? initialValue, List<DropdownMenuItem<Object>>? items, onChangedAction) {

  return BySimonDecoratedBox(
    context,
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: DropdownButton(
          value: initialValue,
          items: items,
          onChanged: onChangedAction
      ),
    ),
  );
}