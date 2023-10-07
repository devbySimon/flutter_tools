library flutter_tools;

import 'package:flutter/material.dart';
import 'package:flutter_tools/UiPrefabs/TextFieldTitle.dart';
import 'package:flutter_tools/flutter_tools.dart';

class BySimonSplitter extends StatefulWidget {

  List<String>? textsToShow;
  List<IconData>? iconsToShow;
  Function(int) onItemSelected;
  bool withScrolling;
  int startIndex;

  BySimonSplitter({this.textsToShow, this.iconsToShow, required this.startIndex, required this.onItemSelected, this.withScrolling = false});

  @override
  State<StatefulWidget> createState() => _BySimonSplitterState();
}

class _BySimonSplitterState extends State<BySimonSplitter> {

  @override
  Widget build(BuildContext context) {

    Widget child = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        if (widget.textsToShow != null)
          for (var text in widget.textsToShow!)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Text(text, style: TextStyle(color: widget.startIndex == widget.textsToShow!.indexOf(text) ?
                Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.outline)),
                onPressed: () {
                  setState(() {
                    widget.startIndex = widget.textsToShow!.indexOf(text);
                  });
                  widget.onItemSelected(widget.startIndex);
                },
              ),
            ),

        if (widget.iconsToShow != null)
          for (var iconData in widget.iconsToShow!)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: () {
                setState(() {
                  widget.startIndex = widget.iconsToShow!.indexOf(iconData);
                });
                widget.onItemSelected(widget.startIndex);
              },
                  icon: Icon(iconData, color: widget.startIndex == widget.iconsToShow!.indexOf(iconData) ?
                  Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.outline)
              ),
            ),
      ],
    );

    if (widget.withScrolling) {
      return BySimonDecoratedBoxNotFilled(
        context,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            child: child
        )
      );
    } else {
      return BySimonDecoratedBoxNotFilled(
        context,
        child
      );
    }
  }

}