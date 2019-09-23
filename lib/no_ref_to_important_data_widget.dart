import 'package:flutter/material.dart';
import 'inherited_widget.dart';

class NoRefToImportantDataWidget extends StatelessWidget {
  const NoRefToImportantDataWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("NoRefToImportantDataWidgetState is built");
    return Container(
        height: 100,
        decoration: BoxDecoration(color: Colors.red),
        child: Column(children: <Widget>[
          Text("NoRefToImportantDataWidget"),
          Text(
              "Inherited Widget data is ${Inherited.of(context, observe: true).importantData.count}"),
        ]));
  }
}
