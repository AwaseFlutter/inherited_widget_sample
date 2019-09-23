import 'package:flutter/material.dart';
import 'package:inherited_widget_sample/ImportantData.kt';
import 'package:inherited_widget_sample/another_widget.dart';

class MyWidget extends StatefulWidget {
  final String title;

  MyWidget({Key key, this.title}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  ImportantData importantData = ImportantData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: AnotherWidget(importantData: importantData));
  }
}
