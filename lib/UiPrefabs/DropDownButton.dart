library flutter_tools;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget BySimonDropDownButton(Object? initialValue, List<DropdownMenuItem<Object>>? items, onChangedAction) {

  return DecoratedBox(
    decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [
            Colors.redAccent,
            Colors.blueAccent,
            Colors.purpleAccent
            //add more colors
          ]),
        borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: DropdownButton(
          value: initialValue,
          items: items,
          onChanged: onChangedAction
      ),
    ),
  );
}