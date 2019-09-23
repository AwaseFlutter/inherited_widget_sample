import 'package:flutter/material.dart';
import 'package:inherited_widget_sample/ImportantData.kt';
import 'package:inherited_widget_sample/this_is_just_ridiculous_widget.dart';

class YetAnotherWidget extends StatefulWidget {
  final ImportantData importantData;

  YetAnotherWidget({Key key, @required this.importantData})
      : assert(importantData != null),
        super(key: key);

  @override
  _YetAnotherWidgetState createState() => _YetAnotherWidgetState();
}

class _YetAnotherWidgetState extends State<YetAnotherWidget> {
  ImportantData get _importantData => widget.importantData;

  @override
  Widget build(BuildContext context) {
    return ThisIsJustRidiculousWidget(importantData: _importantData);
  }
}
