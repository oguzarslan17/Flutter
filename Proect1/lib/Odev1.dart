import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.orange),
      home: new Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Flutter Dersleri",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FAB Tiklandi");
          },
          backgroundColor: Colors.orange,
          child: Icon(Icons.access_alarm, size: 20.5, color: Colors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(2),
                    color: Colors.orange[50],
                    child: Text("D",
                        style: TextStyle(fontSize: 15)),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(2),
                    color: Colors.orange[100],
                    child: Text("A",
                        style: TextStyle(fontSize: 15)),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(2),
                    color: Colors.orange[200],
                    child: Text("R",
                        style: TextStyle(fontSize: 15)),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(2),
                    color: Colors.orange[300],
                    child: Text("T",
                        style: TextStyle(fontSize: 15)),
                  ),
                ]),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.orange[100],
              child: Text("E",
                  style: TextStyle(fontSize: 15)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.orange[200],
              child: Text("R",
                  style: TextStyle(fontSize: 15)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.orange[300],
              child: Text("S",
                  style: TextStyle(fontSize: 15)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.orange[400],
              child: Text("L",
                  style: TextStyle(fontSize: 15)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.orange[500],
              child: Text("E",
                  style: TextStyle(fontSize: 15)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.orange[600],
              child: Text("R",
                  style: TextStyle(fontSize: 15)),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20,20,22.6,20),
              margin: EdgeInsets.all(2),
              color: Colors.orange[800],
              child: Text(" İ",
                  style: TextStyle(fontSize: 15)),
            ),
          ],
        ),
      )
    //uygulamanın açılış noktası
  ));
}
