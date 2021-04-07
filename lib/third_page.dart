import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  //buildメソッドの前に呼び出される
  //描画時に一回だけ呼び出される。
  @override
  void initState() {
    super.initState();
  }


  //buildメソッドの前に呼び出される
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }


  //ウィジェットが破棄される際に呼び出される
  @override
  void dispose() {
    super.dispose();
  }





  //buildメソッド
  @override
  //引数として渡しているcontextについて、参考URL　https://itome.team/blog/2019/12/flutter-advent-calendar-day6/
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
