import 'package:flutter/material.dart';

class NoRefToImportantDataWidget extends StatefulWidget {
  NoRefToImportantDataWidget({Key key}) : super(key: key);

  @override
  _NoRefToImportantDataWidgetState createState() =>
      _NoRefToImportantDataWidgetState();
}

class _NoRefToImportantDataWidgetState
    extends State<NoRefToImportantDataWidget> {
  @override
  Widget build(BuildContext context) {
    debugPrint("_NoRefToImportantDataWidgetState is built");
    return Container(
        height: 100,
        decoration: BoxDecoration(color: Colors.red),
        child: Column(children: <Widget>[
          Text("NoRefToImportantDataWidget"),
        ]));
  }
}
