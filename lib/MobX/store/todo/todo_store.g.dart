// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoStore on TodoStoreBase, Store {
  Computed<int>? _$todoListLengthComputed;

  @override
  int get todoListLength =>
      (_$todoListLengthComputed ??= Computed<int>(() => super.todoListLength,
              name: 'TodoStoreBase.todoListLength'))
          .value;

  late final _$todoStoreListAtom =
      Atom(name: 'TodoStoreBase.todoStoreList', context: context);

  @override
  ObservableList<Observable<TodoModel>> get todoStoreList {
    _$todoStoreListAtom.reportRead();
    return super.todoStoreList;
  }

  @override
  set todoStoreList(ObservableList<Observable<TodoModel>> value) {
    _$todoStoreListAtom.reportWrite(value, super.todoStoreList, () {
      super.todoStoreList = value;
    });
  }

  @override
  String toString() {
    return '''
todoStoreList: ${todoStoreList},
todoListLength: ${todoListLength}
    ''';
  }
}
