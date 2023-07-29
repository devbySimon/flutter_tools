import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

Widget BySimonCard(Widget child) {

  return AnimatedSize(
        duration: 250.milliseconds,
        child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: child,
        )
    ),
  );
}

Widget BySimonCardWrap(List<Widget> children) {

  return BySimonCard(
      Wrap(
        spacing: 20,
        runSpacing: 20,
        children: children,
      )
  );
}

Widget BySimonCardList(List<Widget> children) {

  return BySimonCard(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      )
  );
}