import 'package:flutter/material.dart';
import 'CollapsableToolBarOrnek.dart';
import 'GridView.dart';
import 'ListLessons.dart';
import 'NavigatorLessons.dart';
import 'etkin_liste.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter Dersleri",
      initialRoute: "/CPage",

      routes: {
        "/"      : (context) => ASayfasi(),
        "/CPage" : (context) => CSayfasi("C SAYFASI NAMED ROUTE"),
        "/DPage" : (context) => DSayfasi(),
        "FPage"  : (context) => FSayfasi(),
      },
      onGenerateRoute: (RouteSettings settings){
        List<String> path = settings.name.split("/");
        if(path[1] == "detay"){
          return MaterialPageRoute(builder: (context)=> ListeDetay(int.parse(path[2])));
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(builder: (context)=> DSayfasi()), //verilen rotayı bulamazsa otomatik olarak d sayfasına yönlendiriyoruz
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ),

      /*home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Listeler",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        //drawer: ,
        //body: ASayfasi(),
      ),*/
    ),
  );
}
