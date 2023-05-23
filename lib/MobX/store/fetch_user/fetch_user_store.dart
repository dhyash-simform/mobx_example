import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:mobx_example/MobX/model/user_modal.dart';
import 'package:mobx_example/MobX/service/network_service.dart';

part 'fetch_user_store.g.dart';

class FetchUser = FetchUserBase with _$FetchUser;

abstract class FetchUserBase with Store {
  final NetworkService networkService = NetworkService();

  FetchUserBase() {
    print('called constructor');
    fetchUser();
  }

  @observable
  ObservableFuture<List<UserModal>> userListFuture = ObservableFuture.value([]);

  /// second way
  @action
  Future fetchUser() => userListFuture = ObservableFuture(
        networkService.getData('https://jsonplaceholder.typicode.com/users'),
      );

  /// first way
  ObservableFuture<List<UserModal>> getUser = ObservableFuture(
    http.get(Uri.parse('https://jsonplaceholder.typicode.com/users')).then(
          (value) => (json.decode(value.body) as List<dynamic>)
              .map((e) => UserModal.fromJson(e))
              .toList(),
        ),
  );

  @action
  void changeNameAtIndex({required int index, required String newName}) {
    userListFuture.value?[index].name = newName;
  }
}
