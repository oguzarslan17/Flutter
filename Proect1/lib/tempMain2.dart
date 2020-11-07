import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: "MaterialApp Title",
      home: StateFulHomePage(
        title: "Home Page",
      ),
    );
  }
}

class StateFulHomePage extends StatefulWidget {
  String title;
  int counter = 0;

  StateFulHomePage({String title}) {
    this.title = title;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<StateFulHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _AddCounter();
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Arttır"),
              onPressed: () {
                _AddCounter();
              },
              color: Colors.cyan,
            ),
            Text("${widget.counter}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold).copyWith(
                    color: widget.counter < 1 ? Colors.red : Colors.blue
                )),
            RaisedButton(
                child: Text("Azalt"), onPressed: () {
              _MinusCounter();
            }, color: Colors.red),
          ],
        ),
      ),
    );
  }

  void _AddCounter() {
    setState(() {
      widget.counter++;
      debugPrint("Count: " + widget.counter.toString());
    });
  }
  void _MinusCounter() {
    setState(() {
      widget.counter--;
      debugPrint("Count: " + widget.counter.toString());
    });
  }
}

/*
class _StatelessHomePage extends StatelessWidget {
  final String title;
  int counter = 0;

  _StatelessHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            _AddCounter();
          },
          child: Icon(Icons.add)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              counter.toString(),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

          ],
        ),
      ),
    );
  }

  void _AddCounter() {
    counter++;
    debugPrint("Count: $counter");
  }


}
 */
