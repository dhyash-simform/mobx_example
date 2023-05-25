// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PersonStore on PersonStoreBase, Store {
  Computed<String>? _$nameComputed;

  @override
  String get name => (_$nameComputed ??=
          Computed<String>(() => super.name, name: 'PersonStoreBase.name'))
      .value;

  late final _$_fNameAtom =
      Atom(name: 'PersonStoreBase._fName', context: context);

  String get fName {
    _$_fNameAtom.reportRead();
    return super._fName;
  }

  @override
  String get _fName => fName;

  @override
  set _fName(String value) {
    _$_fNameAtom.reportWrite(value, super._fName, () {
      super._fName = value;
    });
  }

  late final _$_lNameAtom =
      Atom(name: 'PersonStoreBase._lName', context: context);

  String get lName {
    _$_lNameAtom.reportRead();
    return super._lName;
  }

  @override
  String get _lName => lName;

  @override
  set _lName(String value) {
    _$_lNameAtom.reportWrite(value, super._lName, () {
      super._lName = value;
    });
  }

  late final _$userAtom = Atom(name: 'PersonStoreBase.user', context: context);

  @override
  PersonModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(PersonModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$PersonStoreBaseActionController =
      ActionController(name: 'PersonStoreBase', context: context);

  @override
  void changeUser2() {
    final _$actionInfo = _$PersonStoreBaseActionController.startAction(
        name: 'PersonStoreBase.changeUser2');
    try {
      return super.changeUser2();
    } finally {
      _$PersonStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastName(String value) {
    final _$actionInfo = _$PersonStoreBaseActionController.startAction(
        name: 'PersonStoreBase.setLastName');
    try {
      return super.setLastName(value);
    } finally {
      _$PersonStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFirstName(String value) {
    final _$actionInfo = _$PersonStoreBaseActionController.startAction(
        name: 'PersonStoreBase.setFirstName');
    try {
      return super.setFirstName(value);
    } finally {
      _$PersonStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
name: ${name}
    ''';
  }
}
