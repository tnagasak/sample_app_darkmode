import 'package:flutter/material.dart';
import 'package:sample_app_riverpod/costom_widget.dart';
import 'package:sample_app_riverpod/second_page.dart';
import 'package:sample_app_riverpod/third_page.dart';

//mainからはじまる。main関数の中にrunAppを渡すまでは決まった書き方。
//runAppにウィジェット（UIを作っていくためのクラス）を渡す。
//ウィジェットを入れ子にしてUIを作成する。
//FlutterのUIの構成はツリー状になっている
//参考URL　https://itome.team/blog/2019/12/flutter-advent-calendar-day5/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MaterialAppはアプリの一般的なデザインや画面遷移などを設定する。
    //これがない場合、真っ黒な画面がdefaultの画面になる。
    //import 'package:flutter/material.dart';をする必要がある。
    //MaterialAppで設定した場合、defaultで背景白のテーマカラーが水色に設定される。
    return MaterialApp(
      title: 'Flutter Demo',
      //ThemeDateで設定したものがそれ以下にあるウィジェットに反映される。
      //参考URL　https://itome.team/blog/2019/12/flutter-advent-calendar-day12/
      theme: ThemeData(
          primarySwatch: Colors.lime,
          scaffoldBackgroundColor: Colors.white,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.limeAccent),
          textTheme: TextTheme(
              headline4: TextStyle(color: Colors.purple),
              headline6: TextStyle(color: Colors.grey))),
      //ダークモード時のテーマはここでも設定できる。
      darkTheme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.blueGrey,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.brown),
          textTheme: TextTheme(headline6: TextStyle(color: Colors.white))),
      //homeプロパティに渡したものが最初の画面。
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    //StatefulWidgetを使っている場合、setStateメソッドで画面の再描画ができる。（buildメソッドが再度呼ばれる。
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //ScaffoldウィジェットはAppBar、BottomNavigationBar、Drawer、FloatingActionButtonなどの基本的な画面を作れる。
    return Scaffold(
      appBar: AppBar(
        //『widget』はStatefulWidgetに渡した引数を使いたい時に使う。
        title: Text(widget.title),
      ),
      //bodyプロパティが画面のメイン要素
      //Centerはchildに設定した要素を画面の中央にもってくることができる。
      //大きさは親の要素の最大サイズになる。
      body: Center(
        //Columは要素を縦に並べられるウィジェット
        //defaultでは親要素の最大限のサイズまで大きくなる。
        //複数のウィジェットを子要素として持てるため、childrenプロパティにウィジェットの配列を渡す。
        //レイアウトについての参考URL　https://itome.team/blog/2019/12/flutter-advent-calendar-day9/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Textを表示させたい時
            Text(
              'You have pushed the button this many times:',
              //Textウィジェットのstyleプロパティで個別に色などを設定できる。
              style: TextStyle(color: Colors.red),
            ),
            Text(
              '$_counter',
              //Theme.of(context)はそのウィジェットからいちばん近いThemeを取得する
              style: Theme.of(context).textTheme.headline4,
            ),
            //ElevatedButtonは基本的なボタン
            //defaultで影がつく
            ElevatedButton(
              child: Text('2の画面へ'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              ),
            ),
            //テキストだけのボタン
            TextButton(
                child: Text('3の画面へ'),
                onPressed: () {
                  //Flutterで画面遷移するためのメソッド
                  //参考URL　https://itome.team/blog/2019/12/flutter-advent-calendar-day10/
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdPage()));
                }),
            //ウィジェットを継承して自作のウィジェットを作ることも可能
            MyCustomButton(
                text: '3の画面へ',
                //onPressedの値をnull
                onPressed: (_counter % 2 == 0)
                    ? null
                    : () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThirdPage()));
                      }),
          ],
        ),
      ),
      //Scaffoldのプロパティでボタンを設定できる。
      //他プロパティはコードを辿ると見ることができる。
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
