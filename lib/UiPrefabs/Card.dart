library flutter_tools;

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_tools/UiPrefabs/DecoratedBox.dart';

Widget BySimonCard(BuildContext context, Widget child) {

  return AnimatedSize(
        duration: 250.milliseconds,
        child: BySimonDecoratedBox(context, child),
  );
}

Widget BySimonCardWrap(BuildContext context, List<Widget> children) {

  return BySimonCard(
      context,
      Wrap(
        spacing: 20,
        runSpacing: 20,
        children: children,
      )
  );
}

Widget BySimonCardList(BuildContext context, List<Widget> children) {

  return BySimonCard(
      context,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      )
  );
}