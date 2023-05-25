import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobx_example/MobX/models/user_model.dart';

class UserService {
  List<UserModel> listOfUsers = [];

  Future<List<UserModel>> getData(String url) async {
    final response = await http.get(Uri.parse(url));
    final data = json.decode(response.body) as List;
    listOfUsers = data.map((e) => UserModel.fromJson(e)).toList();
    return listOfUsers;
  }
}
