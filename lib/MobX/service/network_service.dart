import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobx_example/MobX/model/user_modal.dart';

class NetworkService {
  List<UserModal> listOfUsers = [];

  Future<List<UserModal>> getData(String url) async {
    final response = await http.get(Uri.parse(url));
    final data = json.decode(response.body) as List;
    listOfUsers = data.map((e) => UserModal.fromJson(e)).toList();
    return listOfUsers;
  }
}
