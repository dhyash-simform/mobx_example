// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$User on UserBase, Store {
  Computed<String>? _$nameComputed;

  @override
  String get name => (_$nameComputed ??=
          Computed<String>(() => super.name, name: 'UserBase.name'))
      .value;

  late final _$_fNameAtom = Atom(name: 'UserBase._fName', context: context);

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

  late final _$_lNameAtom = Atom(name: 'UserBase._lName', context: context);

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

  late final _$UserBaseActionController =
      ActionController(name: 'UserBase', context: context);

  @override
  dynamic setLastName(String value) {
    final _$actionInfo =
        _$UserBaseActionController.startAction(name: 'UserBase.setLastName');
    try {
      return super.setLastName(value);
    } finally {
      _$UserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFirstName(String value) {
    final _$actionInfo =
        _$UserBaseActionController.startAction(name: 'UserBase.setFirstName');
    try {
      return super.setFirstName(value);
    } finally {
      _$UserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name}
    ''';
  }
}
