import 'package:flutter/material.dart';
import 'package:inherited_widget_sample/ImportantData.dart';

class ThisIsJustRidiculousWidget extends StatefulWidget {
  final ImportantData importantData;

  ThisIsJustRidiculousWidget({Key key, @required this.importantData})
      : assert(importantData != null),
        super(key: key);

  @override
  _ThisIsJustRidiculousWidgetState createState() =>
      _ThisIsJustRidiculousWidgetState();
}

class _ThisIsJustRidiculousWidgetState
    extends State<ThisIsJustRidiculousWidget> {
  ImportantData get _importantData => widget.importantData;

  @override
  Widget build(BuildContext context) {
    debugPrint("ThisIsJustRidiculousWidget is built");
    return Container(
        height: 200,
        decoration: BoxDecoration(color: Colors.deepPurpleAccent),
        child: Column(children: <Widget>[
          Text("ThisIsJustRidiculousWidget"),
          Text("importantData is ${_importantData.count}")
        ]));
  }
}
