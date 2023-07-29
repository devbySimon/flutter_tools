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