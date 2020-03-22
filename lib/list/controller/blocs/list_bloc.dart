import 'dart:async';
import 'package:flutter_hacker_news_demo/list/model/list_item_model.dart';
import 'package:flutter_hacker_news_demo/list/model/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class ListBloc {
  final _repository = Repository();
  final _dataSubject = PublishSubject<List<ListItemModel>>();

  Stream<List<ListItemModel>> get dataStream => _dataSubject.stream;

  fetchData() async {
    final data = await _repository.fetchData();
    return _dataSubject.sink.add(data);
  }

  dispose() {
    _dataSubject.close();
  }
}
