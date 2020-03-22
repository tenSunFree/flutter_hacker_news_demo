import 'dart:async';
import '../list_item_model.dart';
import 'list_remote_source.dart';

class Repository {
  List<Source> sources = <Source>[
    ListRemoteSource(),
  ];

  Future<List<ListItemModel>> fetchData() {
    return sources[0].fetchData();
  }
}

abstract class Source {
  Future<List<ListItemModel>> fetchData();
}
