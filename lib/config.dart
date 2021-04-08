import 'package:flutter/material.dart';

//カラーのクラスを作成してここの色を使うことも可能(このコード内では未使用)
class AppThemeColor {
  //カラーの設定方法はいろいろある。
  static final Color mainColor = Color(0x121212);
  static final Color subColor = Colors.white10;
}

class ConfigTextStyle {
  //constとfinalの違い
  //参考URL　https://stackoverflow.com/questions/50431055/what-is-the-difference-between-the-const-and-final-keywords-in-dart
  //基本的にconstのほうがよさそう。
  static const TextStyle smallText = TextStyle(fontSize: 10);
  static const TextStyle mediumText = TextStyle(fontSize: 50);
  static const TextStyle largeText = TextStyle(fontSize: 100);
  //その他、文字色、太さ、フォントファミリー、影やその他の文字のデコレーションなども設定できる。
}
