import 'package:flutter/material.dart';
import 'package:tools/UiPrefabs/TextFieldTitle.dart';

Widget BySimonCheckbox({String text = "", onChanged, value})  {

  return Row(
    children: [
      Checkbox(value: value, onChanged: onChanged),
      BySimonTextDescription(text),
    ],
  );
}

Widget BySimonCheckboxVertical({String text = "", onChanged, value})  {

  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Checkbox(value: value, onChanged: onChanged),
      BySimonTextDescription(text),
    ],
  );
}