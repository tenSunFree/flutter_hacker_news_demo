import 'package:flutter/material.dart';
import 'package:flutter_hacker_news_demo/list/controller/blocs/list_inherited_widget.dart';

class ListRefresh extends StatelessWidget {
  final Widget child;

  ListRefresh({this.child});

  @override
  Widget build(BuildContext context) {
    final bloc = ListInheritedWidget.of(context);

    return RefreshIndicator(
      child: child,
      onRefresh: () async {
        await bloc.fetchData();
      },
    );
  }
}
