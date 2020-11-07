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
      body: Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.orange[100],
                child: Text("D",
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(left:5,top:15,right:5,bottom:15),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange[200],
                child: Text("A",
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(left:5,top:15,right:5,bottom:15),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange[400],
                child: Text("R",
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(left:1,top:15,right:1,bottom:15),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange[800],
                child: Text("T",
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(left:5,top:15,right:5,bottom:15),
              ),
            )
          ],
        ),
      ),
      /*Center(
        child: Container(
          /*color: Colors.orange,
                alignment: Alignment.center,
                height: 300,
                width: 300,
                margin: EdgeInsets.all(24),
                child: Text("Flutter", style: TextStyle(fontSize: 24, color: Colors.blue), textAlign: TextAlign.center,),*/

          color: Color(0xaa410093),
          child: Text(
            "Oasd asd asss yanf laınfl şadjneaf ncle anlcflş efcnjefle jmflıej mlıfel ıfjlefıl efefıl efel ıfak nsdlan sd şkanmsdş maasd nşkdşaksdmşkamdşkamsdmkşasmdşkasmdşkmasşkdmşkamdşkamsşdkmaşskdmşkasmdşkamsdşklmasşdlkmaşskldmşalsmdşlamsdşl",
            style: TextStyle(color: Colors.white, fontSize: 24),
            textAlign: TextAlign.center,
          ),
          constraints: BoxConstraints.expand(width: 350, height: 350),
          margin: EdgeInsets.only(top:0.5, left:10),
          padding: EdgeInsets.all(10),
        ),
      ),*/
    ), //uygulamanın açılış noktası
  ));
}
