import 'package:flutter/material.dart';
import 'list_bloc.dart';
export 'list_bloc.dart';

class ListInheritedWidget extends InheritedWidget {
  final ListBloc bloc;

  ListInheritedWidget({Key key, Widget child})
      : bloc = ListBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static ListBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ListInheritedWidget>())
        .bloc;
  }
}
