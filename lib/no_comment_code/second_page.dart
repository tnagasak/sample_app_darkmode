import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Theme(
      data: ThemeData(
        primaryColor: Colors.red,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('2nd Page'),
        ),
        body: Center(
          child: Text('2nd Page'),
        ),
      ),
    );
  }
}
