// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignUpFormStore on SignUpFormBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: 'SignUpFormBase.hasErrors'))
          .value;

  late final _$usernameAtom =
      Atom(name: 'SignUpFormBase.username', context: context);

  @override
  String? get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String? value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  late final _$emailAtom = Atom(name: 'SignUpFormBase.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: 'SignUpFormBase.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$usernameErrorAtom =
      Atom(name: 'SignUpFormBase.usernameError', context: context);

  @override
  String? get usernameError {
    _$usernameErrorAtom.reportRead();
    return super.usernameError;
  }

  @override
  set usernameError(String? value) {
    _$usernameErrorAtom.reportWrite(value, super.usernameError, () {
      super.usernameError = value;
    });
  }

  late final _$emailErrorAtom =
      Atom(name: 'SignUpFormBase.emailError', context: context);

  @override
  String? get emailError {
    _$emailErrorAtom.reportRead();
    return super.emailError;
  }

  @override
  set emailError(String? value) {
    _$emailErrorAtom.reportWrite(value, super.emailError, () {
      super.emailError = value;
    });
  }

  late final _$passwordErrorAtom =
      Atom(name: 'SignUpFormBase.passwordError', context: context);

  @override
  String? get passwordError {
    _$passwordErrorAtom.reportRead();
    return super.passwordError;
  }

  @override
  set passwordError(String? value) {
    _$passwordErrorAtom.reportWrite(value, super.passwordError, () {
      super.passwordError = value;
    });
  }

  late final _$SignUpFormBaseActionController =
      ActionController(name: 'SignUpFormBase', context: context);

  @override
  void setUsername(dynamic value) {
    final _$actionInfo = _$SignUpFormBaseActionController.startAction(
        name: 'SignUpFormBase.setUsername');
    try {
      return super.setUsername(value);
    } finally {
      _$SignUpFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(dynamic value) {
    final _$actionInfo = _$SignUpFormBaseActionController.startAction(
        name: 'SignUpFormBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$SignUpFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(dynamic value) {
    final _$actionInfo = _$SignUpFormBaseActionController.startAction(
        name: 'SignUpFormBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$SignUpFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validUsername(String? value) {
    final _$actionInfo = _$SignUpFormBaseActionController.startAction(
        name: 'SignUpFormBase.validUsername');
    try {
      return super.validUsername(value);
    } finally {
      _$SignUpFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validEmail(String? value) {
    final _$actionInfo = _$SignUpFormBaseActionController.startAction(
        name: 'SignUpFormBase.validEmail');
    try {
      return super.validEmail(value);
    } finally {
      _$SignUpFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validPassword(String? value) {
    final _$actionInfo = _$SignUpFormBaseActionController.startAction(
        name: 'SignUpFormBase.validPassword');
    try {
      return super.validPassword(value);
    } finally {
      _$SignUpFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateAll() {
    final _$actionInfo = _$SignUpFormBaseActionController.startAction(
        name: 'SignUpFormBase.validateAll');
    try {
      return super.validateAll();
    } finally {
      _$SignUpFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username},
email: ${email},
password: ${password},
usernameError: ${usernameError},
emailError: ${emailError},
passwordError: ${passwordError},
hasErrors: ${hasErrors}
    ''';
  }
}
