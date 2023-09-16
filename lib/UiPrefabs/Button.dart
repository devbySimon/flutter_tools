library flutter_tools;

import 'package:flutter/material.dart';
import 'package:flutter_tools/flutter_tools.dart';

class BySimonTextButton extends ElevatedButton {

  BySimonTextButton({required super.onPressed, required super.child,}) : super(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        minimumSize: Size(100, 60),
        //primary: Colors.red,
        //onPrimary: Colors.white, // change color of child prop
        //onSurface: Colors.blue, // surface color
        shadowColor: Colors
            .grey,
        elevation: 5, // we can set elevation of this beautiful button
        /*side: BorderSide(
            //color: Colors.redAccent.shade400,
            width: 0,
            style: BorderStyle.solid),*/
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              30),
        ),
        tapTargetSize: MaterialTapTargetSize.padded,
      )
  );
}

Widget BySimonButton(BuildContext context, Widget innerChild, {Function()? onTap, Function()? onDoubleTap, Function()? onLongPress, bool filled = true}) {

  return GestureDetector(
    onTap: onTap,
    onDoubleTap: onDoubleTap,
    onLongPress: onLongPress,
    child: filled ? BySimonDecoratedBoxFilled(
        context,
        innerChild) : BySimonDecoratedBox(context, innerChild),
  );
}