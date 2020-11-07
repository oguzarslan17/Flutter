import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResimVeButonTurleri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Text("Image ve Buton Türleri"),
              ),
            ]),
        IntrinsicHeight(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(2),
                    color: Colors.red[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FadeInImage.assetNetwork(
                            placeholder: 'assets/images/loading.gif',
                            image:
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                        Text("FadeinImage"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(2),
                    color: Colors.red[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const Image(
                          image: NetworkImage(
                              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                        ),
                        Text("Oğuz"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(2),
                    color: Colors.red[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                          AssetImage('assets/images/bmw.jpg'),
                          radius: 50,
                        ),
                        Text("Oğuz"),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
        IntrinsicHeight(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(2),
                    color: Colors.red[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const Image(
                          image: NetworkImage(
                              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                        ),
                        Text("Oğuz"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red[50],
                    margin: EdgeInsets.all(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlutterLogo(
                          size: 60,
                          colors: Colors.orange,
                          style: FlutterLogoStyle.horizontal,
                          textColor: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red[50],
                    margin: EdgeInsets.all(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Placeholder(
                              color: Colors.red[200], strokeWidth: 2),
                        ),
                        Text("Placeholder Widget"),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
        Center(
          child: Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    child: Text("ClickMe"),
                    textColor: Colors.orange,
                    color: Colors.red,
                    onPressed: () => debugPrint("fat arrow func"),
                  ),
                  RaisedButton(
                    child: Text("Hi"),
                    textColor: Colors.cyan,
                    color: Colors.purple,
                    onPressed: () {
                      Yazdir();
                    },
                  ),
                  RaisedButton(
                    child: Text("Dewamke"),
                    textColor: Colors.cyan,
                    color: Colors.yellow,
                    onPressed: () {
                      Yazdir();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.add_a_photo, size: 32,),
                    onPressed: () {},
                  ),
                  FlatButton(onPressed: (){} , child: Text("Kaya", style: TextStyle(color: Colors.red),),)
                ],
              )),
        ),
      ],
    );
  }
}

void Yazdir() {
  debugPrint("Print Method");
}