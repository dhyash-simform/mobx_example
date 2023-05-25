import 'dart:convert';
import 'dart:developer';

import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:mobx_example/MobX/models/user_model.dart';
import 'package:mobx_example/MobX/service/user_service.dart';

part 'user_store.g.dart';

class UserStore = UserStoreBase with _$UserStore;

abstract class UserStoreBase with Store {
  final UserService networkService = UserService();

  UserStoreBase() {
    log('called FetchUserBase constructor');
    fetchUser();
  }

  @observable
  ObservableFuture<List<UserModel>> userListFuture = ObservableFuture.value([]);

  /// second way
  @action
  Future fetchUser() => userListFuture = ObservableFuture(
        networkService.getData('https://jsonplaceholder.typicode.com/users'),
      );

  /// first way
  ObservableFuture<List<UserModel>> getUser = ObservableFuture(
    http.get(Uri.parse('https://jsonplaceholder.typicode.com/users')).then(
          (value) => (json.decode(value.body) as List<dynamic>)
              .map((e) => UserModel.fromJson(e))
              .toList(),
        ),
  );

  @action
  void changeNameAtIndex({required int index, required String newName}) {
    userListFuture.value?[index].name = newName;
  }
}
