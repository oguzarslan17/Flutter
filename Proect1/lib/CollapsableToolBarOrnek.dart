import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollapsableToolBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.teal,
          expandedHeight: 100,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver App Bar"),
            centerTitle: false,
            background: Image.asset('assets/images/bmw.jpg', fit: BoxFit.fill),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(containers()),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              //delegate: SliverChildListDelegate(containers()),
              delegate: SliverChildBuilderDelegate(
                DinamikElemanUretme,
                childCount: 9,
              )),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              DinamikElemanUretme,
              childCount: 10,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverFixedExtentList(
            delegate: SliverChildListDelegate(containers()),
            itemExtent: 100,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
              DinamikElemanUretme,
              childCount: 10,
            ),
            itemExtent: 100,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
            ),
            delegate: SliverChildBuilderDelegate(
              DinamikElemanUretme,
              childCount: 12,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            delegate: SliverChildListDelegate(containers()),
            //delegate: SliverChildBuilderDelegate(DinamikElemanUretme)
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 6,
          children: containers(),
        ),
        SliverGrid.extent(
          maxCrossAxisExtent: 300,
          children: containers(),
        ),
      ],
    );
  }

  Widget DinamikElemanUretme(BuildContext ctx, int index) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      child: Text(
        "Dinamik Liste Elemanı",
        textAlign: TextAlign.center,
      ),
      color: randomColor(),
    );
  }

  Color randomColor() {
    return Color.fromARGB(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255));
  }

  List<Widget> containers() {
    return [
      Container(
        alignment: Alignment.center,
        height: 100,
        child: Text(
          "Sabit Liste Elemanı",
          textAlign: TextAlign.center,
        ),
        color: Colors.deepPurple,
      ),
      Container(
        alignment: Alignment.center,
        height: 100,
        child: Text(
          "Sabit Liste Elemanı",
          textAlign: TextAlign.center,
        ),
        color: Colors.pink,
      ),
      Container(
        alignment: Alignment.center,
        height: 100,
        child: Text(
          "Sabit Liste Elemanı",
          textAlign: TextAlign.center,
        ),
        color: Colors.blue,
      ),
      Container(
        alignment: Alignment.center,
        height: 100,
        child: Text(
          "Sabit Liste Elemanı",
          textAlign: TextAlign.center,
        ),
        color: Colors.red,
      ),
      Container(
        alignment: Alignment.center,
        height: 100,
        child: Text(
          "Sabit Liste Elemanı",
          textAlign: TextAlign.center,
        ),
        color: Colors.yellow,
      ),
      Container(
        alignment: Alignment.center,
        height: 100,
        child: Text(
          "Sabit Liste Elemanı",
          textAlign: TextAlign.center,
        ),
        color: Colors.cyan,
      ),
    ];
  }
}
