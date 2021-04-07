import 'package:flutter/material.dart';
import 'package:sample_app_riverpod/costom_widget.dart';
import 'package:sample_app_riverpod/second_page.dart';
import 'package:sample_app_riverpod/third_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
          primarySwatch: Colors.lime,
          scaffoldBackgroundColor: Colors.white,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.limeAccent),
          textTheme: TextTheme(
              headline4: TextStyle(color: Colors.purple),
              headline6: TextStyle(color: Colors.grey))),

      darkTheme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.blueGrey,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.brown),
          textTheme: TextTheme(headline6: TextStyle(color: Colors.white))),

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
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: Colors.red),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),

            ElevatedButton(
              child: Text('2の画面へ'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              ),
            ),

            TextButton(
                child: Text('3の画面へ'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdPage()));
                }),

            MyCustomButton(
                text: '3の画面へ',
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

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
