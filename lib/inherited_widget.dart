import 'package:flutter/material.dart';
import 'package:inherited_widget_sample/ImportantData.dart';

class Inherited extends InheritedWidget {
  const Inherited({
    Key key,
    @required this.importantData,
    @required Widget child,
  }) : super(key: key, child: child);

  final ImportantData importantData;

  static Inherited of(
    BuildContext context, {
    @required bool observe,
  }) {
    return observe
        ? context.inheritFromWidgetOfExactType(Inherited)
        : context
            .ancestorInheritedElementForWidgetOfExactType(Inherited)
            .widget;
  }

  @override
  bool updateShouldNotify(Inherited old) =>
      old.importantData.count <= importantData.count;
}
