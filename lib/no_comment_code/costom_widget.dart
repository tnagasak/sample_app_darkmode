import 'package:flutter/material.dart';

class MyCustomButton extends ElevatedButton{
  MyCustomButton({@required String text, @required VoidCallback onPressed}):super(
    onPressed: onPressed,
    child: Text(text, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30.0),),
  );
}