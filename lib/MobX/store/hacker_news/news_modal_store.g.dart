// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_modal_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewsModalStore on NewsModalBase, Store {
  late final _$titleAtom = Atom(name: 'NewsModalBase.title', context: context);

  @override
  String? get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String? value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$NewsModalBaseActionController =
      ActionController(name: 'NewsModalBase', context: context);

  @override
  void changeTitle(String newTitle) {
    final _$actionInfo = _$NewsModalBaseActionController.startAction(
        name: 'NewsModalBase.changeTitle');
    try {
      return super.changeTitle(newTitle);
    } finally {
      _$NewsModalBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title}
    ''';
  }
}
