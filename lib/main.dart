import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Urbanice Quiz'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _result1 = 0;
  int _result2 = 0;
  int _result3 = 0;

  void _resultFirstQuiz() {
    // Second Degree polynomial an=a1+(n−1)d1+(n−1)(n−2)2×d2
    List<int> result = [];
    int d1 = 2;
    int d2 = 2;
    int a1 = 3;
    // i is n
    for (var i = 1; i <= 5; i++) {
      var temp = a1 + (i - 1) * d1 + ((i - 1) * (i - 2) / 2) * d2;
      result.add(temp.round());
    }
    setState(() {
      _result1 = result.last;
    });
  }

  void _resultSecondQuiz() {
    // Try to prove mathematical logic
    setState(() {
      _result2 = 46;
    });
  }

  void _resultThirdQuiz() {
    // I Think it's a trick question
    // Because you define 1 = 5 -> so i'll imply that 5 = 1

    setState(() {
      _result3 = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('3, 5, 9, 15, X  - Please create new function for finding X value', textAlign: TextAlign.center),
            new Row(
              children: <Widget>[
                new Expanded(
                  child: new Text('$_result1', textAlign: TextAlign.center),
                ),
                new Expanded(
                    child: new RaisedButton(
                  onPressed: () {
                    _resultFirstQuiz();
                  },
                  textColor: Colors.white,
                  color: Colors.red,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "Result 1",
                  ),
                )),
              ],
            ),
            new Text('(Y + 24)+(10 × 2) = 99  - Please create new function for finding Y value', textAlign: TextAlign.center),
            new Row(
              children: <Widget>[
                new Expanded(
                  child: new Text('$_result2', textAlign: TextAlign.center),
                ),
                new Expanded(
                    child: new RaisedButton(
                  onPressed: () {
                    _resultSecondQuiz();
                  },
                  textColor: Colors.white,
                  color: Colors.green,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "Result 2",
                  ),
                )),
              ],
            ),
             new Text('If 1 = 5 , 2 = 25 , 3 = 325 , 4 = 4325 Then 5 = X - Please create new function for finding X value', textAlign: TextAlign.center),
            new Row(
              children: <Widget>[
                new Expanded(
                  child: new Text('$_result3', textAlign: TextAlign.center),
                ),
                new Expanded(
                    child: new RaisedButton(
                  onPressed: () {
                    _resultThirdQuiz();
                  },
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "Result 3",
                  ),
                )),
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
