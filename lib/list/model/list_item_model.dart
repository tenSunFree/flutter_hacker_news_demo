class ListItemModel {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;

  ListItemModel.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        name = parsedJson['name'] ?? '',
        username = parsedJson['username'] ?? '',
        email = parsedJson['email'] ?? '',
        phone = parsedJson['phone'] ?? '',
        website = parsedJson['website'];
}
