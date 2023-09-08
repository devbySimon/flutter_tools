library flutter_tools;

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_tools/UiPrefabs/DecoratedBox.dart';
import 'package:flutter_tools/flutter_tools.dart';

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

Widget BySimonCardColumnWithTextButtonOnSide(BuildContext context, List<Widget> children, String buttonText, Function() onTap) {

  return GestureDetector(
    onTap: onTap,
    child: BySimonDecoratedBoxFilledNoInnerPadding(
        context,
        Row(
          children: [
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: children,
                  ),
                ),
              ),
            ),
            SizedBox.fromSize(size: Size.square(4),),
            BySimonTextTitle(buttonText),
          ],
        )
    ),
  );
}