import 'package:flutter/material.dart';

class GridViewSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      itemCount: 99,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.deepPurpleAccent,
                width: 5,
                style: BorderStyle.solid,
              ),
              //borderRadius: new BorderRadius.all(
              //  new Radius.circular(10),
              //),
              boxShadow: [
                new BoxShadow(
                  color: Colors.pink,
                  offset: new Offset(10, 10),
                  blurRadius: 10,
                ),
              ],
              shape: BoxShape.circle,
              color: Colors.teal[300],
              gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.teal],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              image: DecorationImage(
                image: AssetImage('assets/images/bmw.jpg'),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
            ),
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Hi $index",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          onTap: () => debugPrint("Tek Tıklama"),
          onDoubleTap: () {
            debugPrint("Çift Tıklandı");
          },
          onHorizontalDragStart: (e) => debugPrint("$e"),
        );
      },
    );
  }
//Gridview.extent
/*return GridView.extent(
      //crossAxisCount: 3,
      maxCrossAxisExtent: 150,
      primary: false,
      reverse: false,
      padding: EdgeInsets.all(8),
      crossAxisSpacing: 10,
      //scrollDirection: Axis.horizontal,
      mainAxisSpacing: 5,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 1", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 2", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 3", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 4", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 5", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 4", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 5", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 4", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 5", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 4", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 5", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 4", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 5", textAlign: TextAlign.center,),
        ),
      ],
    );*/

//GridView.count
/*return GridView.count(
      crossAxisCount: 3,
      primary: false,
      reverse: false,
      padding: EdgeInsets.all(8),
      crossAxisSpacing: 10,
      scrollDirection: Axis.horizontal,
      mainAxisSpacing: 5,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 1", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 2", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 3", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 4", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 5", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 4", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 5", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 4", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 5", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 4", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 5", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 4", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hi 5", textAlign: TextAlign.center,),
        ),
      ],
    );*/
}
