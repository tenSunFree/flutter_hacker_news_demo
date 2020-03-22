import 'dart:convert';
import 'package:http/http.dart' show Client;
import '../list_item_model.dart';
import 'repository.dart';

final baseUrl = 'https://jsonplaceholder.typicode.com';

class ListRemoteSource implements Source {
  Client client = new Client();

  Future<List<ListItemModel>> fetchData() async {
    final response = await client.get('$baseUrl/users');
    var data = (json.decode(response.body) as List)
        .map((e) => new ListItemModel.fromJson(e))
        .toList();
    return data;
  }
}
