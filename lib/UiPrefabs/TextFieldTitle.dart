library flutter_tools;

import 'package:flutter/material.dart';

class BySimonTextTitle extends Text {

  BySimonTextTitle(String text) : super(
    text.toUpperCase(),
    style: TextStyle(fontWeight: FontWeight.bold),
  );
}

class BySimonTextDescription extends Text {

  BySimonTextDescription(super.data) : super(

  );
}

class BySimonTextSmall extends Text {

  BySimonTextSmall(super.data) : super(
    textScaleFactor: 0.8,
  );
}