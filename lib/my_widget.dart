import 'package:flutter/material.dart';
import 'package:inherited_widget_sample/another_widget.dart';
import 'package:inherited_widget_sample/ImportantData.dart';
import 'package:inherited_widget_sample/no_ref_to_important_data_widget.dart';
import 'inherited_widget.dart';

class MyWidget extends StatefulWidget {
  final String title;

  _MyWidgetState _myWidgetState;

  _MyWidgetState get state => _myWidgetState;

  MyWidget({Key key, this.title}) : super(key: key);

  @override
  _MyWidgetState createState() {
    _myWidgetState = _MyWidgetState();
    return _myWidgetState;
  }
}

class _MyWidgetState extends State<MyWidget> {
  ImportantData importantData = ImportantData();
  GlobalKey<AnotherWidgetState> anotherWidgetStateGlobalKey = GlobalKey();

  _doImportantThings() {
    setState(() {
      importantData.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MyWidget is built");
    return Inherited(
        importantData: importantData,
        child: Scaffold(
          appBar: AppBar(title: Text(widget.title)),
          body: Center(
            child: Column(
              children: <Widget>[
                Text("MyWidget"),
                Text(
                    "Another Widget Direct Reference ${anotherWidgetStateGlobalKey.currentState?.widget?.importantData?.count ?? "empty"}"),
                AnotherWidget(
                    key: anotherWidgetStateGlobalKey,
                    importantData: importantData),
                const NoRefToImportantDataWidget()
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _doImportantThings,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          backgroundColor: Colors.green,
        ));
  }
}
