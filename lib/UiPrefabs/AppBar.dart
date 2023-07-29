library flutter_tools;

import 'package:flutter/material.dart';
import 'package:flutter_tools/UiPrefabs/TextFieldTitle.dart';

class BySimonAppBar extends AppBar {

  BySimonAppBar(String title) : super(
    title: BySimonTextTitle(title),
  );
}