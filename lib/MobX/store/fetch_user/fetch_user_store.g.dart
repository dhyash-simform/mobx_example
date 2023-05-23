// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FetchUser on FetchUserBase, Store {
  late final _$userListFutureAtom =
      Atom(name: 'FetchUserBase.userListFuture', context: context);

  @override
  ObservableFuture<List<UserModal>> get userListFuture {
    _$userListFutureAtom.reportRead();
    return super.userListFuture;
  }

  @override
  set userListFuture(ObservableFuture<List<UserModal>> value) {
    _$userListFutureAtom.reportWrite(value, super.userListFuture, () {
      super.userListFuture = value;
    });
  }

  late final _$FetchUserBaseActionController =
      ActionController(name: 'FetchUserBase', context: context);

  @override
  Future<dynamic> fetchUser() {
    final _$actionInfo = _$FetchUserBaseActionController.startAction(
        name: 'FetchUserBase.fetchUser');
    try {
      return super.fetchUser();
    } finally {
      _$FetchUserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNameAtIndex({required int index, required String newName}) {
    final _$actionInfo = _$FetchUserBaseActionController.startAction(
        name: 'FetchUserBase.changeNameAtIndex');
    try {
      return super.changeNameAtIndex(index: index, newName: newName);
    } finally {
      _$FetchUserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userListFuture: ${userListFuture}
    ''';
  }
}
