import 'package:flutter/material.dart';
import 'package:inherited_widget_sample/ImportantData.kt';

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
    return Column(
        // ここで_importantDataを利用した処理を行う。
        );
  }
}
