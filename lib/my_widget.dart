import 'package:flutter/material.dart';
import 'package:inherited_widget_sample/another_widget.dart';
import 'package:inherited_widget_sample/ImportantData.dart';
import 'package:inherited_widget_sample/no_ref_to_important_data_widget.dart';

class MyWidget extends StatefulWidget {
  final String title;

  MyWidget({Key key, this.title}) : super(key: key);

  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  ImportantData importantData = ImportantData();

  doImportantThings() {
    setState(() {
      importantData.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MyWidget is built");
    return AnotherWidget(importantData: importantData);
  }
}
