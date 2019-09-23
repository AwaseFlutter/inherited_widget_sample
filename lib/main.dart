import 'package:flutter/material.dart';
import 'package:inherited_widget_sample/my_widget.dart';
import 'package:inherited_widget_sample/no_ref_to_important_data_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  GlobalKey<MyWidgetState> myWidgetState = GlobalKey();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    debugPrint("MyApp is built");
    return MaterialApp(
        title: 'InheritedWidgetSample',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text('InheritedWidget')),
          body: Center(
            child: Column(
              children: <Widget>[
                Text("MyWidget"),
                MyWidget(key: myWidgetState),
                NoRefToImportantDataWidget()
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              myWidgetState.currentState.doImportantThings();
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          backgroundColor: Colors.green,
        ));
  }
}
