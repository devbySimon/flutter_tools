library flutter_tools;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget BySimonDropDownButton(dynamic initialValue, List<DropdownMenuItem<Object>>? items, onChangedAction) {

  return DecoratedBox(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
    child: DropdownButton(
        value: initialValue,
        items: items,
        onChanged: onChangedAction
    ),
  );
}