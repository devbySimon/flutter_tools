library flutter_tools;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

DecoratedBox BySimonDecoratedBox(BuildContext context, Widget child, {bool slightOutline = false}) {
  return BySimonDecoratedBoxNotFilled(
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

DecoratedBox BySimonDecoratedBoxNoInnerPadding(BuildContext context, Widget child, {bool slightOutline = false}) {
  return BySimonDecoratedBoxNotFilled(
    context,
    DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: child,
    ),
    slightOutline: slightOutline,
  );
}

DecoratedBox BySimonDecoratedBoxFilled(BuildContext context, Widget child, {bool slightOutline = false}) {
  return DecoratedBox(
      decoration: BoxDecoration(
        border: GradientBoxBorder(
          gradient: LinearGradient(
              colors: [
                if (!slightOutline) ...[
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.tertiary,
                ],
                if (slightOutline) ...[
                  Theme.of(context).colorScheme.shadow,
                  Theme.of(context).colorScheme.shadow,
                ],
                //add more colors
              ])
        ),
        gradient: LinearGradient(
            colors: [
              if (!slightOutline) ...[
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary,
              ],
              if (slightOutline) ...[
                Theme.of(context).colorScheme.shadow,
                Theme.of(context).colorScheme.shadow,
              ],
              //add more colors
            ]),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: child,
      )
  );
}

DecoratedBox BySimonDecoratedBoxNotFilled(BuildContext context, Widget child, {bool slightOutline = false}) {
  return DecoratedBox(
      decoration: BoxDecoration(
        border: GradientBoxBorder(
            gradient: LinearGradient(
                colors: [
                  if (!slightOutline) ...[
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.tertiary,
                  ],
                  if (slightOutline) ...[
                    Theme.of(context).colorScheme.shadow,
                    Theme.of(context).colorScheme.shadow,
                  ],
                  //add more colors
                ])
        ),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: child,
      )
  );
}