// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoMobx on TodoBase, Store {
  Computed<int>? _$todoListLengthComputed;

  @override
  int get todoListLength =>
      (_$todoListLengthComputed ??= Computed<int>(() => super.todoListLength,
              name: 'TodoBase.todoListLength'))
          .value;

  late final _$TodoBaseActionController =
      ActionController(name: 'TodoBase', context: context);

  @override
  dynamic removeAll() {
    final _$actionInfo =
        _$TodoBaseActionController.startAction(name: 'TodoBase.removeAll');
    try {
      return super.removeAll();
    } finally {
      _$TodoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addTodo(TodoModel todo) {
    final _$actionInfo =
        _$TodoBaseActionController.startAction(name: 'TodoBase.addTodo');
    try {
      return super.addTodo(todo);
    } finally {
      _$TodoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeTodo(int index) {
    final _$actionInfo =
        _$TodoBaseActionController.startAction(name: 'TodoBase.removeTodo');
    try {
      return super.removeTodo(index);
    } finally {
      _$TodoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todoListLength: ${todoListLength}
    ''';
  }
}
