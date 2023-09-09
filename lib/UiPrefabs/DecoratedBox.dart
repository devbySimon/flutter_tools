library flutter_tools;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

DecoratedBox BySimonDecoratedBox(BuildContext context, Widget child, {bool slightOutline = false}) {
  return BySimonDecoratedBoxFilledNoInnerPadding(
    context,
    DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    ),
    slightOutline: slightOutline,
  );
}

DecoratedBox BySimonDecoratedBoxFilled(BuildContext context, Widget child, {bool slightOutline = false}) {
  return BySimonDecoratedBoxFilledNoInnerPadding(
    context,
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: child,
    ),
    slightOutline: slightOutline,
  );
}

DecoratedBox BySimonDecoratedBoxFilledNoInnerPadding(BuildContext context, Widget child, {bool slightOutline = false}) {
  return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        gradient: LinearGradient(
            colors: [
              if (slightOutline) ...[
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary,
              ],
              if (!slightOutline) ...[
                Theme.of(context).colorScheme.shadow,
              ],
              //add more colors
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: child,
      )
  );
}