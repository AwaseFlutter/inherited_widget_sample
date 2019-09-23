import 'package:flutter/material.dart';

class NoRefToImportantDataWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("NoRefToImportantDataWidgetState is built");
    return Container(
        height: 100,
        decoration: BoxDecoration(color: Colors.red),
        child: Column(children: <Widget>[
          Text("NoRefToImportantDataWidget"),
        ]));
  }
}
