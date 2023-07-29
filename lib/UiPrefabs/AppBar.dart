import 'package:flutter/material.dart';
import 'package:tools/UiPrefabs/TextFieldTitle.dart';

class BySimonAppBar extends AppBar {

  BySimonAppBar(String title) : super(
    title: BySimonTextTitle(title),
  );
}