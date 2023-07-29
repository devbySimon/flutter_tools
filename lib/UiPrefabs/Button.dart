import 'package:flutter/material.dart';

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