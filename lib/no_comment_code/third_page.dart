import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {


  @override
  void initState() {
    super.initState();
  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }


  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Column(
        children: [
          Text('third page'),
          //ローカルにある画像を読み込む時に使うウィジェット
          // Image.asset('path'),
          //ネットワーク上にある画像を読み込む時に使うウィジェット
          // Image.network('http://www.........'),
        ],
      ),
    );
  }
}
