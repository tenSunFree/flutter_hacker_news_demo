import 'package:flutter/material.dart';
import 'list/controller/blocs/list_inherited_widget.dart';
import 'list/view/screens/list_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListInheritedWidget(
      child: MaterialApp(
        title: 'FlutterHackerNewsDemo',
        onGenerateRoute: routes,
      ),
    );
  }

  // ignore: missing_return
  Route routes(RouteSettings settings) {
    if (settings.name == '/') {
      return MaterialPageRoute(
        builder: (context) {
          final bloc = ListInheritedWidget.of(context);
          bloc.fetchData();
          return ListScreen();
        },
      );
    }
  }
}
