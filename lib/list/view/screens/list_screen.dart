import 'package:flutter/material.dart';
import 'package:flutter_hacker_news_demo/list/controller/blocs/list_inherited_widget.dart';
import 'package:flutter_hacker_news_demo/list/model/list_item_model.dart';
import 'package:flutter_hacker_news_demo/list/view/widget/list_item.dart';
import 'package:flutter_hacker_news_demo/list/view/widget/list_refresh.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = ListInheritedWidget.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: buildList(bloc),
    );
  }

  Widget buildList(ListBloc bloc) {
    // StreamBuilder其實是一個StatefulWidget
    // 它通過監聽Stream, 發現有數據輸出時自動重建, 調用builder方法
    return StreamBuilder(
      stream: bloc.dataStream,
      builder: (context, AsyncSnapshot<List<ListItemModel>> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Container(
          color: Color(0xFFC05640),
          child: ListRefresh(
            child: ListItem(data: snapshot.data),
          ),
        );
      },
    );
  }
}
