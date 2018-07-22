import 'package:flutter/material.dart';
import 'package:flutter_app01/src/di/sample_locator.dart';
import 'package:flutter_app01/src/di/sample_module.dart';

SampleLocator locator;

void main() async {
  locator = await SampleLocator.create(SampleModule());
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("DI sample"),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                locator.getEmployee().name.nameValue
              )
            ],
          ),
        ),
      )
    );
  }
}