library flutter_tools;

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_tools/UiPrefabs/DecoratedBox.dart';
import 'package:flutter_tools/flutter_tools.dart';

Widget BySimonCard(BuildContext context, Widget child, {bool slightOutline = false}) {

  return AnimatedSize(
        duration: 250.milliseconds,
        child: BySimonDecoratedBox(context, child, slightOutline: slightOutline),
  );
}

Widget BySimonCardWrap(BuildContext context, List<Widget> children, {bool slightOutline = false}) {

  return BySimonCard(
      context,
      Wrap(
        spacing: 20,
        runSpacing: 20,
        children: children,
      ),
      slightOutline: slightOutline,
  );
}

Widget BySimonCardList(BuildContext context, List<Widget> children, {bool slightOutline = false}) {

  return BySimonCard(
      context,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
      slightOutline: slightOutline,
  );
}

Widget BySimonCardColumnWithTextButtonOnSide(BuildContext context, List<Widget> children, Widget buttonWidget,
    {Function()? onTapDetails, Function()? onTapButton}) {

  return BySimonDecoratedBoxFilled(
      context,
      Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onTapDetails,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: children,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: onTapButton,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: buttonWidget,
            ),
          ),
        ],
      )
  );
}