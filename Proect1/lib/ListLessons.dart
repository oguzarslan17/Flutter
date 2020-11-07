import 'package:flutter/material.dart';

class Liste extends StatelessWidget {
  //Liste İçin Veri Kaynağı
  List<int> l = List.generate(30, (index) => index);
  List<String> altBaslik =
      List.generate(30, (index) => "Liste Elemanı Alt Başlık: $index");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: l
          .map(
            (current) => Column(
              children: <Widget>[
                Container(
                  child: Card(
                    color: Colors.teal.shade50,
                    margin: EdgeInsets.all(10),
                    elevation: 10,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.person),
                        radius: 15,
                      ),
                      title: Text("Liste Elaman Index: $current"),
                      subtitle: Text(altBaslik[current]),
                      trailing: Icon(Icons.android),
                    ),
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
