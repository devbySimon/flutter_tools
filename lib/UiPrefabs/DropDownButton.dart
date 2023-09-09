library flutter_tools;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tools/UiPrefabs/DecoratedBox.dart';

Widget BySimonDropDownButton(BuildContext context, Object? initialValue, List<DropdownMenuItem<Object>>? items, onChangedAction) {

  return BySimonDecoratedBoxNoInnerPadding(
    context,
    Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: DropdownButton(
          value: initialValue,
          items: items,
          onChanged: onChangedAction,
          icon: const Padding(
              padding: EdgeInsets.only(left:20),
              child:Icon(Icons.expand_circle_down)
          ),
          underline: Container(),
          isExpanded: true,
      ),
    ),
  );
}