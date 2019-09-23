import 'package:flutter/material.dart';
import 'package:inherited_widget_sample/ImportantData.kt';
import 'yet_another_widget.dart';

class AnotherWidget extends StatefulWidget {
  final ImportantData importantData;

  AnotherWidget({Key key, @required this.importantData})
      : assert(importantData != null),
        super(key: key);

  @override
  _AnotherWidgetState createState() => _AnotherWidgetState();
}

class _AnotherWidgetState extends State<AnotherWidget> {
  ImportantData get _importantData => widget.importantData;

  @override
  Widget build(BuildContext context) {
    return YetAnotherWidget(importantData: _importantData);
  }
}
