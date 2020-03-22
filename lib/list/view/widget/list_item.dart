import 'package:flutter/material.dart';
import 'package:flutter_hacker_news_demo/list/model/list_item_model.dart';

class ListItem extends StatelessWidget {
  final List<ListItemModel> data;

  ListItem({this.data});

  @override
  Widget build(BuildContext context) {
    var lastIndex = data.length - 1;
    return ListView.builder(
      padding: EdgeInsets.all(0),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return buildItem(context, data[index], index == lastIndex);
      },
    );
  }

  Widget buildItem(
      BuildContext context, ListItemModel data, bool isLastPosition) {
    return Container(
      margin: !isLastPosition
          ? EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 16)
          : EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
      child: Card(
        color: Color(0xFFEDD170),
        child: ListTile(
          title: Text(
            data.name,
            style: TextStyle(color: Color(0xFF003D73)),
          ),
          subtitle: Text(
            data.email,
            style: TextStyle(color: Color(0xFF1ECFD6)),
          ),
        ),
      ),
    );
  }
}
