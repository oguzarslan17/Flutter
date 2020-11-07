import 'package:flutter/material.dart';

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A SAYFASI",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("B Sayfası."),
              color: Colors.teal,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BSayfasi()),
                ).then((value) => debugPrint("$value"));
              },
            ),
            RaisedButton(
              child: Text("C Sayfası."),
              color: Colors.teal,
              onPressed: () {
                Navigator.pushNamed(context, "/CPage");
              },
            ),
            RaisedButton(
              child: Text("D Sayfası."),
              color: Colors.teal,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => DSayfasi()));
              },
            ),
            RaisedButton(
              child: Text("E Sayfası."),
              color: Colors.teal,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ESayfasi()),
                ).then((value) => debugPrint("$value"));
              },
            ),
            RaisedButton(
              child: Text("F Sayfası. Generate Route"),
              color: Colors.teal,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "FPage",
                ).then((value) => debugPrint("$value"));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BSayfasi extends StatelessWidget {
  String pageContent = "C SAYFASI";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "B SAYFASI",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Geri Dön."),
              color: Colors.cyan,
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CSayfasi extends StatelessWidget {
  String baslik;

  CSayfasi(String a) {
    baslik = a;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () {
        debugPrint("On will pop çalıştı");
        Navigator.pop(context, "C SAYFASINDAN GÖNDERİLEN VERİ");
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            baslik,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Geri Dön."),
                color: Colors.cyan,
                onPressed: () {
                  Navigator.pop(context, "C SAYFASINDAN GERİ DÖNÜLDÜ");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "D SAYFASI",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("B Sayfası."),
              color: Colors.teal,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BSayfasi()),
                ).then((value) => debugPrint("$value"));
              },
            ),
            RaisedButton(
              child: Text("C Sayfası."),
              color: Colors.teal,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CSayfasi("C SAYFASI")),
                ).then((value) => debugPrint("$value"));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ESayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E SAYFASI",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("B Sayfası."),
              color: Colors.teal,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BSayfasi()),
                ).then((value) => debugPrint("$value"));
              },
            ),
            RaisedButton(
              child: Text("C Sayfası."),
              color: Colors.teal,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CSayfasi("C SAYFASI")),
                ).then((value) => debugPrint("$value"));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "F SAYFASI",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Liste Elemani $index",
                  style: TextStyle(
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
            ),
            onTap: (){
              Navigator.pushNamed(context, "/detay/$index");
            },
          );
        },
        itemCount: 40,
      ),
    );
  }
}

class ListeDetay extends StatelessWidget {
  int index;
  ListeDetay(int index){
    this.index = index;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Detay Sayfası ",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(40),
          padding: EdgeInsets.all(20),
          color: Colors.teal,
          child: Text("$index. elemanın detay sayfası"),
        ),
      ),

    );
  }
}
