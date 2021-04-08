import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Themeウィジェットで囲うことでそれ以下のウィジェットはこちらの設定が反映される。
    //このページ以外は設定していないので、大元の設定が反映される
    //このウィジェットはダークテーマ用のプロパティとかがないので、これを使って実装したい場合は、
    //bool型の変数などを使って設定することになりそう。
    return Theme(
      data: ThemeData(
        primaryColor: Colors.red,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('2nd Page'),
        ),
        body: Center(
          child: Text('個別でのテーマ設定'),
        ),
      ),
    );
  }
}
