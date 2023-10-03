library flutter_tools;

import 'package:flutter/material.dart';
import 'package:flutter_tools/UiPrefabs/TextFieldTitle.dart';
import 'package:flutter_tools/flutter_tools.dart';

class BySimonSplitter extends StatefulWidget {

  List<String>? textsToShow;
  List<IconData>? iconsToShow;
  Function(int) onItemSelected;

  BySimonSplitter({this.textsToShow, this.iconsToShow, required this.onItemSelected});

  @override
  State<StatefulWidget> createState() => _BySimonSplitterState();
}

class _BySimonSplitterState extends State<BySimonSplitter> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return BySimonCard(
      context,
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            if (widget.textsToShow != null)
              for (var text in widget.textsToShow!)
                TextButton(
                  child: Text(text, style: TextStyle(color: _currentIndex == widget.textsToShow!.indexOf(text) ?
                  Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.outline)),
                  onPressed: () {
                    setState(() {
                      _currentIndex = widget.textsToShow!.indexOf(text);
                    });
                    widget.onItemSelected(_currentIndex);
                  },
                ),

            if (widget.iconsToShow != null)
              for (var iconData in widget.iconsToShow!)
                IconButton(onPressed: () {
                  setState(() {
                    _currentIndex = widget.iconsToShow!.indexOf(iconData);
                  });
                  widget.onItemSelected(_currentIndex);
                },
                    icon: Icon(iconData, color: _currentIndex == widget.iconsToShow!.indexOf(iconData) ?
                    Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.outline)
                ),
          ],
        ),
      ),
    );
  }

}