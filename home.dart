import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

MyApp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.redAccent);

  var text = Text(
    'LW APP',
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );
  var x = text;

  var MyEmailIcon = Icon(Icons.email);
  var MyCalIcon = Icon(Icons.calendar_today);
  mypress() {
    Fluttertoast.showToast(
        msg: "LW APP",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  mypress2() {
    print("Something Clicked on Cal Icon");
  }

  var url =
      'https://raw.githubusercontent.com/1398abhisingh911/day4-appd/master/download.jpg';
  var MyImage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );

  var MyEmailButton = IconButton(icon: MyEmailIcon, onPressed: mypress);
  var MyCalButton = IconButton(icon: MyCalIcon, onPressed: mypress2);

  var myappbar = AppBar(
    title: x,
    backgroundColor: Colors.redAccent,
    leading: MyImage,
    actions: <Widget>[
      MyEmailButton,
      MyCalButton,
    ],
  );
  var myhome = Scaffold(
    appBar: myappbar,
    /*body: Center(child: Text('Intern Company')),*/
    body: MyImage,
    backgroundColor: Colors.redAccent.shade100,
  );
  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}
