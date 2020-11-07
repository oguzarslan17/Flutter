import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EtkinListe extends StatelessWidget {
  List<Ogrenci> ogr = [];

  @override
  Widget build(BuildContext context) {
    get();
    return ListView.builder(
      itemCount: ogr.length,
      //itemBuilder: (context, index) => Card(),
      itemBuilder: (context, index) {
        return Container(
          child: Card(
            elevation: 3,
            margin: EdgeInsets.all(8),
            color: ogr[index]._gender == "  Kadın  "
                ? Colors.pink.shade50
                : Colors.green.shade50,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(ogr[index]._name),
              subtitle:
                  Text(ogr[index]._number.toString() + ogr[index]._gender),
              trailing: Icon(Icons.android),
              onTap: () {
                debugPrint(ogr[index].tosString());
                toastMessage(index);
                showAlertDialog(context, index);
              },
              onLongPress: () {
                debugPrint("Uzun Basılan");
                toastMessage(index);
              },
            ),
          ),
        );
      },
    );
  }

  void get() {
    ogr = List.generate(
        30,
        (index) =>
            Ogrenci("Kaya", 5, index % 5 == 0 ? "  Kadın  " : "  Erkek  "));
  }

  void toastMessage(int index) {
    Fluttertoast.showToast(
        msg: ogr[index].tosString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  void showAlertDialog(BuildContext ctx, int index) {
    showDialog(
      context: ctx,
      barrierDismissible: false,
      builder: (ctx) {
        return AlertDialog(
          title: Text("Sample Alert"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("Ad: ${ogr[index]._name} "),
                Text("Ad: ${ogr[index]._number}"),
                Text("Ad: ${ogr[index]._gender} "),
              ],
            ),
          ),
          actions: <Widget>[
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                ),
                FlatButton(
                  child: Icon(Icons.remove, color: Colors.red),
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                )
              ],
            ),
          ],
        );
      },
    );
  }
}

class Ogrenci {
  String _name;
  int _number;
  String _gender;

  Ogrenci(this._name, this._number, this._gender);

  @override
  String tosString() {
    return "Öğrenci: $_name Numara: $_number Cinsiyet: $_gender";
  }
}
