import 'package:Proect1/Ui/ResimVeButonTurleri.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//void main() {
//  var app = new MyApp();
//  runApp(app);
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
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
          body: ResimVeButonTurleri(),
        )
      //uygulamanın açılış noktası
    );
  }
}

